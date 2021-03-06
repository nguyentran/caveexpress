#pragma once

#include "engine/common/network/IProtocolHandler.h"
#include "engine/common/network/messages/RemoveEntityMessage.h"
#include "engine/client/ClientMap.h"

class RemoveEntityHandler: public IClientProtocolHandler {
private:
	ClientMap& _map;
public:
	RemoveEntityHandler (ClientMap& map) :
			_map(map)
	{
	}

	void execute (const IProtocolMessage& message) override
	{
		const RemoveEntityMessage *msg = static_cast<const RemoveEntityMessage*>(&message);
		const uint16_t id = msg->getEntityId();
		const bool fadeOut = msg->isFadeOut();
		_map.removeEntity(id, fadeOut);
	}
};
