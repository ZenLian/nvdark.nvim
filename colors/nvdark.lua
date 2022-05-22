-- clear cache so this reloads changes.
-- useful for development
package.loaded['nvdark'] = nil
package.loaded['nvdark.config'] = nil
package.loaded['nvdark.util'] = nil
package.loaded['nvdark.palette'] = nil
package.loaded['nvdark.style'] = nil
package.loaded['nvdark.theme'] = nil

require('nvdark').load()
