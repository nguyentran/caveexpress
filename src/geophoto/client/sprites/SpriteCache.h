#pragma once

#include "client/sprites/Sprite.h"
#include "common/NonCopyable.h"
#include <map>
#include <string>

class SpriteCache: public NonCopyable {
private:
	typedef std::map<std::string, SpritePtr> SpriteMap;
	typedef SpriteMap::const_iterator SpriteMapConstIter;
	SpriteMap _sprites;

	SpriteCache ();

public:
	virtual ~SpriteCache ();

	SpritePtr load (const std::string& spriteName);

	static SpriteCache& get ();
};

#define Sprites SpriteCache::get()