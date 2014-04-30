#pragma once

#include "engine/common/network/IProtocolHandler.h"
#include "caveexpress/server/map/Map.h"
#include "engine/common/campaign/CampaignManager.h"

class SpawnHandler: public IServerProtocolHandler {
private:
	Map& _map;
	CampaignManager& _campaignManager;
public:
	SpawnHandler (Map& map, CampaignManager& campaignManager) :
			_map(map), _campaignManager(campaignManager)
	{
	}

	void execute (const ClientId& clientId, const IProtocolMessage& message) override
	{
		// add the new player to every connected player
		Player* player = new Player(_map, clientId);
		const CampaignPtr& activeCampaign = _campaignManager.getActiveCampaign();
		const uint8_t lives = activeCampaign->getLives();
		player->setLives(lives);
		info(LOG_SERVER, String::format("spawn client %i with %i lives", clientId, player->getLives()));
		if (!_map.initPlayer(player))
			delete player;
	}
};
