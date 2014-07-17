#include "UINodeMap.h"
#include "caveexpress/client/network/StartMapHandler.h"
#include "caveexpress/client/network/FailedMapHandler.h"
#include "caveexpress/client/network/FinishedMapHandler.h"
#include "caveexpress/client/network/SpawnInfoHandler.h"
#include "caveexpress/client/network/UpdateParticleHandler.h"
#include "caveexpress/client/network/InitWaitingMapHandler.h"

UINodeMap::UINodeMap (IFrontend *frontend, ServiceProvider& serviceProvider, CampaignManager& campaignManager, int x, int y, int width, int height, ClientMap& map) :
		IUINodeMap(frontend, serviceProvider, campaignManager, x, y, width, height, map)
{
	ProtocolHandlerRegistry& r = ProtocolHandlerRegistry::get();
	r.registerClientHandler(protocol::PROTO_STARTMAP, new StartMapHandler());
	r.registerClientHandler(protocol::PROTO_FAILEDMAP, new FailedMapHandler(_map, serviceProvider));
	r.registerClientHandler(protocol::PROTO_FINISHEDMAP, new FinishedMapHandler(_map));
	r.registerClientHandler(protocol::PROTO_SPAWNINFO, new SpawnInfoHandler(_map, this));
	r.registerClientHandler(protocol::PROTO_UPDATEPARTICLE, new UpdateParticleHandler(_map));
	r.registerClientHandler(protocol::PROTO_INITWAITING, new InitWaitingMapHandler(serviceProvider));
}

UINodeMap::~UINodeMap ()
{
	ProtocolHandlerRegistry& r = ProtocolHandlerRegistry::get();
	r.unregisterClientHandler(protocol::PROTO_STARTMAP);
	r.unregisterClientHandler(protocol::PROTO_FAILEDMAP);
	r.unregisterClientHandler(protocol::PROTO_FINISHEDMAP);
	r.unregisterClientHandler(protocol::PROTO_SPAWNINFO);
	r.unregisterClientHandler(protocol::PROTO_UPDATEPARTICLE);
	r.unregisterClientHandler(protocol::PROTO_INITWAITING);
}
