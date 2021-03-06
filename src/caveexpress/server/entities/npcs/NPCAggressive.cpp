#include "NPCAggressive.h"
#include "caveexpress/server/entities/Player.h"

NPCAggressive::NPCAggressive (const EntityType &type, Map& map) :
		NPC(type, map)
{
	info(LOG_SERVER, "create new " + type.name);
}

NPCAggressive::~NPCAggressive ()
{
}

bool NPCAggressive::shouldCollide (const IEntity* entity) const
{
	return entity->isStone() || NPC::shouldCollide(entity);
}
