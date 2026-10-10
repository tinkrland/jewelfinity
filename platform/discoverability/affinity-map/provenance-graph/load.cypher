// affinity provenance graph load - deterministic, idempotent
CREATE (p:Prior {built: '', engine_version: '0.1.0', input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', output_hash: '64be0204d1d1423978baf8cd68f65d7a112c3608601fdf5711aeaa2f4b69e8b5', table_schema: 'affinity-table-v1'})
MERGE (t:Term {id: 'georgian'}) SET t += {facet_count: 7, id: 'georgian', name: 'georgian style', norm: 1.6941074346, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'cannetille', class: 'feature'})
MERGE (f:Facet {name: 'floral', class: 'feature'})
MERGE (f:Facet {name: 'nature', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'feature'})
MERGE (f:Facet {name: 'repousse', class: 'feature'})
MERGE (f:Facet {name: 'scrollwork', class: 'feature'})
MERGE (t:Term {id: 'victorian'}) SET t += {facet_count: 10, id: 'victorian', name: 'victorian style', norm: 2.0784609691, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'bird', class: 'feature'})
MERGE (f:Facet {name: 'floral', class: 'feature'})
MERGE (f:Facet {name: 'heart', class: 'feature'})
MERGE (f:Facet {name: 'knot', class: 'feature'})
MERGE (f:Facet {name: 'organic', class: 'axis'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'scrollwork', class: 'feature'})
MERGE (f:Facet {name: 'serpent', class: 'feature'})
MERGE (f:Facet {name: 'tree', class: 'feature'})
MERGE (t:Term {id: 'art_nouveau'}) SET t += {facet_count: 8, id: 'art_nouveau', name: 'art nouveau style', norm: 2.2231734075, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'floral', class: 'feature'})
MERGE (f:Facet {name: 'freeform_asymmetry', class: 'feature'})
MERGE (f:Facet {name: 'nature', class: 'feature'})
MERGE (f:Facet {name: 'organic', class: 'axis'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'scrollwork', class: 'feature'})
MERGE (f:Facet {name: 'whiplash_curve', class: 'feature'})
MERGE (t:Term {id: 'edwardian'}) SET t += {facet_count: 8, id: 'edwardian', name: 'edwardian style', norm: 2.0784609691, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'bow', class: 'feature'})
MERGE (f:Facet {name: 'dainty', class: 'axis'})
MERGE (f:Facet {name: 'garland', class: 'feature'})
MERGE (f:Facet {name: 'lace', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'ribbon', class: 'feature'})
MERGE (f:Facet {name: 'scrollwork', class: 'feature'})
MERGE (t:Term {id: 'art_deco'}) SET t += {facet_count: 12, id: 'art_deco', name: 'art deco style', norm: 2.4561148182, updated: '2026-10-10', version: '0.3.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'calibre', class: 'feature'})
MERGE (f:Facet {name: 'chevron', class: 'feature'})
MERGE (f:Facet {name: 'clean', class: 'axis'})
MERGE (f:Facet {name: 'contrast', class: 'feature'})
MERGE (f:Facet {name: 'fan', class: 'feature'})
MERGE (f:Facet {name: 'geometric', class: 'axis'})
MERGE (f:Facet {name: 'geometric_step', class: 'feature'})
MERGE (f:Facet {name: 'sun_motif', class: 'feature'})
MERGE (f:Facet {name: 'sunburst', class: 'feature'})
MERGE (f:Facet {name: 'symmetry', class: 'feature'})
MERGE (f:Facet {name: 'zigzag', class: 'feature'})
MERGE (t:Term {id: 'retro'}) SET t += {facet_count: 10, id: 'retro', name: 'retro style', norm: 1.8466185313, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'bold_curves', class: 'feature'})
MERGE (f:Facet {name: 'bow', class: 'feature'})
MERGE (f:Facet {name: 'chunky', class: 'axis'})
MERGE (f:Facet {name: 'dimensional_goldwork', class: 'feature'})
MERGE (f:Facet {name: 'fabric_motif', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'postwar_era', class: 'axis'})
MERGE (f:Facet {name: 'scrollwork', class: 'feature'})
MERGE (f:Facet {name: 'sphere', class: 'feature'})
MERGE (t:Term {id: 'mid_century_modernist'}) SET t += {facet_count: 8, id: 'mid_century_modernist', name: 'mid-century modernist style', norm: 1.9544820286, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'abstract_form', class: 'feature'})
MERGE (f:Facet {name: 'clean', class: 'axis'})
MERGE (f:Facet {name: 'clean_line', class: 'feature'})
MERGE (f:Facet {name: 'geometric_abstract', class: 'feature'})
MERGE (f:Facet {name: 'modern', class: 'axis'})
MERGE (f:Facet {name: 'postwar_era', class: 'axis'})
MERGE (f:Facet {name: 'sculptural_form', class: 'feature'})
MERGE (f:Facet {name: 'sphere', class: 'feature'})
MERGE (t:Term {id: 'brutalist'}) SET t += {facet_count: 7, id: 'brutalist', name: 'brutalist style', norm: 2.1, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'architectural_mass', class: 'feature'})
MERGE (f:Facet {name: 'chunky', class: 'axis'})
MERGE (f:Facet {name: 'heavy_form', class: 'feature'})
MERGE (f:Facet {name: 'industrial', class: 'feature'})
MERGE (f:Facet {name: 'modern', class: 'axis'})
MERGE (f:Facet {name: 'raw', class: 'axis'})
MERGE (f:Facet {name: 'raw_texture', class: 'feature'})
MERGE (t:Term {id: 'organic_modern'}) SET t += {facet_count: 7, id: 'organic_modern', name: 'organic modern style', norm: 1.8309833424, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'biomorphic_form', class: 'feature'})
MERGE (f:Facet {name: 'clean', class: 'axis'})
MERGE (f:Facet {name: 'modern', class: 'axis'})
MERGE (f:Facet {name: 'nature', class: 'feature'})
MERGE (f:Facet {name: 'organic', class: 'axis'})
MERGE (f:Facet {name: 'sculptural_form', class: 'feature'})
MERGE (f:Facet {name: 'whiplash_curve', class: 'feature'})
MERGE (t:Term {id: 'celestial'}) SET t += {facet_count: 8, id: 'celestial', name: 'celestial style', norm: 1.9672315573, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'constellation_dot', class: 'feature'})
MERGE (f:Facet {name: 'crescent', class: 'feature'})
MERGE (f:Facet {name: 'dark_celestial_motif', class: 'feature'})
MERGE (f:Facet {name: 'moon', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'star', class: 'feature'})
MERGE (f:Facet {name: 'sun', class: 'feature'})
MERGE (f:Facet {name: 'sun_motif', class: 'feature'})
MERGE (t:Term {id: 'gothic'}) SET t += {facet_count: 10, id: 'gothic', name: 'gothic style', norm: 2.1142374512, updated: '2026-10-10', version: '0.3.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'chain', class: 'feature'})
MERGE (f:Facet {name: 'cross', class: 'feature'})
MERGE (f:Facet {name: 'dagger', class: 'feature'})
MERGE (f:Facet {name: 'dark', class: 'axis'})
MERGE (f:Facet {name: 'dark_celestial_motif', class: 'feature'})
MERGE (f:Facet {name: 'dark_ornate', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'oxidized_finish', class: 'feature'})
MERGE (f:Facet {name: 'point', class: 'feature'})
MERGE (f:Facet {name: 'skull', class: 'feature'})
MERGE (t:Term {id: 'biker'}) SET t += {facet_count: 7, id: 'biker', name: 'biker style', norm: 1.8439088915, updated: '2026-10-10', version: '0.4.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'chain_link', class: 'feature'})
MERGE (f:Facet {name: 'chunky', class: 'axis'})
MERGE (f:Facet {name: 'heavy_form', class: 'feature'})
MERGE (f:Facet {name: 'modern', class: 'axis'})
MERGE (f:Facet {name: 'raw', class: 'axis'})
MERGE (f:Facet {name: 'rope_twist', class: 'feature'})
MERGE (f:Facet {name: 'skull', class: 'feature'})
MERGE (t:Term {id: 'egyptian_revival'}) SET t += {facet_count: 8, id: 'egyptian_revival', name: 'egyptian revival style', norm: 1.7635192089, updated: '2026-10-10', version: '0.3.0', vocabulary: 'style-vocabulary'}
MERGE (f:Facet {name: 'antique', class: 'axis'})
MERGE (f:Facet {name: 'eye_of_horus', class: 'feature'})
MERGE (f:Facet {name: 'geometric', class: 'axis'})
MERGE (f:Facet {name: 'geometric_step', class: 'feature'})
MERGE (f:Facet {name: 'lotus', class: 'feature'})
MERGE (f:Facet {name: 'ornate', class: 'axis'})
MERGE (f:Facet {name: 'pyramid_form', class: 'feature'})
MERGE (f:Facet {name: 'scarab', class: 'feature'})
MERGE (t:Term {id: 'metal_gold'}) SET t += {facet_count: 2, id: 'metal_gold', name: 'gold', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'gold', class: 'feature'})
MERGE (f:Facet {name: 'sun', class: 'feature'})
MERGE (t:Term {id: 'metal_silver'}) SET t += {facet_count: 2, id: 'metal_silver', name: 'silver', norm: 1.4142135624, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'moon', class: 'feature'})
MERGE (f:Facet {name: 'silver', class: 'feature'})
MERGE (t:Term {id: 'metal_platinum'}) SET t += {facet_count: 1, id: 'metal_platinum', name: 'platinum', norm: 1, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'platinum', class: 'feature'})
MERGE (t:Term {id: 'metal_copper'}) SET t += {facet_count: 2, id: 'metal_copper', name: 'copper', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'copper', class: 'feature'})
MERGE (f:Facet {name: 'venus', class: 'feature'})
MERGE (t:Term {id: 'metal_iron'}) SET t += {facet_count: 2, id: 'metal_iron', name: 'iron', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'iron', class: 'feature'})
MERGE (f:Facet {name: 'mars', class: 'feature'})
MERGE (t:Term {id: 'metal_tin'}) SET t += {facet_count: 2, id: 'metal_tin', name: 'tin', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'jupiter', class: 'feature'})
MERGE (f:Facet {name: 'tin', class: 'feature'})
MERGE (t:Term {id: 'metal_lead'}) SET t += {facet_count: 2, id: 'metal_lead', name: 'lead', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'lead', class: 'feature'})
MERGE (f:Facet {name: 'saturn', class: 'feature'})
MERGE (t:Term {id: 'metal_mercury'}) SET t += {facet_count: 1, id: 'metal_mercury', name: 'mercury', norm: 1, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'mercury', class: 'feature'})
MERGE (t:Term {id: 'element_fire'}) SET t += {facet_count: 2, id: 'element_fire', name: 'fire element', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'fire', class: 'feature'})
MERGE (f:Facet {name: 'gold', class: 'feature'})
MERGE (t:Term {id: 'element_earth'}) SET t += {facet_count: 2, id: 'element_earth', name: 'earth element', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'earth', class: 'feature'})
MERGE (f:Facet {name: 'gold', class: 'feature'})
MERGE (t:Term {id: 'element_air'}) SET t += {facet_count: 2, id: 'element_air', name: 'air element', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'air', class: 'feature'})
MERGE (f:Facet {name: 'silver', class: 'feature'})
MERGE (t:Term {id: 'element_water'}) SET t += {facet_count: 2, id: 'element_water', name: 'water element', norm: 1.4142135624, updated: '2026-09-27', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'silver', class: 'feature'})
MERGE (f:Facet {name: 'water', class: 'feature'})
MERGE (t:Term {id: 'sign_aries'}) SET t += {facet_count: 3, id: 'sign_aries', name: 'aries', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'cardinal', class: 'feature'})
MERGE (f:Facet {name: 'fire', class: 'feature'})
MERGE (f:Facet {name: 'mars', class: 'feature'})
MERGE (t:Term {id: 'sign_taurus'}) SET t += {facet_count: 3, id: 'sign_taurus', name: 'taurus', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'earth', class: 'feature'})
MERGE (f:Facet {name: 'fixed', class: 'feature'})
MERGE (f:Facet {name: 'venus', class: 'feature'})
MERGE (t:Term {id: 'sign_gemini'}) SET t += {facet_count: 3, id: 'sign_gemini', name: 'gemini', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'air', class: 'feature'})
MERGE (f:Facet {name: 'mercury', class: 'feature'})
MERGE (f:Facet {name: 'mutable', class: 'feature'})
MERGE (t:Term {id: 'sign_cancer'}) SET t += {facet_count: 3, id: 'sign_cancer', name: 'cancer', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'cardinal', class: 'feature'})
MERGE (f:Facet {name: 'moon', class: 'feature'})
MERGE (f:Facet {name: 'water', class: 'feature'})
MERGE (t:Term {id: 'sign_leo'}) SET t += {facet_count: 3, id: 'sign_leo', name: 'leo', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'fire', class: 'feature'})
MERGE (f:Facet {name: 'fixed', class: 'feature'})
MERGE (f:Facet {name: 'sun', class: 'feature'})
MERGE (t:Term {id: 'sign_virgo'}) SET t += {facet_count: 3, id: 'sign_virgo', name: 'virgo', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'earth', class: 'feature'})
MERGE (f:Facet {name: 'mercury', class: 'feature'})
MERGE (f:Facet {name: 'mutable', class: 'feature'})
MERGE (t:Term {id: 'sign_libra'}) SET t += {facet_count: 3, id: 'sign_libra', name: 'libra', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'air', class: 'feature'})
MERGE (f:Facet {name: 'cardinal', class: 'feature'})
MERGE (f:Facet {name: 'venus', class: 'feature'})
MERGE (t:Term {id: 'sign_scorpio'}) SET t += {facet_count: 3, id: 'sign_scorpio', name: 'scorpio', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'fixed', class: 'feature'})
MERGE (f:Facet {name: 'mars', class: 'feature'})
MERGE (f:Facet {name: 'water', class: 'feature'})
MERGE (t:Term {id: 'sign_sagittarius'}) SET t += {facet_count: 3, id: 'sign_sagittarius', name: 'sagittarius', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'fire', class: 'feature'})
MERGE (f:Facet {name: 'jupiter', class: 'feature'})
MERGE (f:Facet {name: 'mutable', class: 'feature'})
MERGE (t:Term {id: 'sign_capricorn'}) SET t += {facet_count: 3, id: 'sign_capricorn', name: 'capricorn', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'cardinal', class: 'feature'})
MERGE (f:Facet {name: 'earth', class: 'feature'})
MERGE (f:Facet {name: 'saturn', class: 'feature'})
MERGE (t:Term {id: 'sign_aquarius'}) SET t += {facet_count: 3, id: 'sign_aquarius', name: 'aquarius', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'air', class: 'feature'})
MERGE (f:Facet {name: 'fixed', class: 'feature'})
MERGE (f:Facet {name: 'saturn', class: 'feature'})
MERGE (t:Term {id: 'sign_pisces'}) SET t += {facet_count: 3, id: 'sign_pisces', name: 'pisces', norm: 1.7320508076, updated: '2026-10-10', version: '0.2.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'jupiter', class: 'feature'})
MERGE (f:Facet {name: 'mutable', class: 'feature'})
MERGE (f:Facet {name: 'water', class: 'feature'})
MERGE (t:Term {id: 'tarot_fool'}) SET t += {facet_count: 0, id: 'tarot_fool', name: 'the fool', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_magician'}) SET t += {facet_count: 0, id: 'tarot_magician', name: 'the magician', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_high_priestess'}) SET t += {facet_count: 0, id: 'tarot_high_priestess', name: 'the high priestess', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_empress'}) SET t += {facet_count: 0, id: 'tarot_empress', name: 'the empress', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_lovers'}) SET t += {facet_count: 0, id: 'tarot_lovers', name: 'the lovers', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_chariot'}) SET t += {facet_count: 0, id: 'tarot_chariot', name: 'the chariot', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_strength'}) SET t += {facet_count: 0, id: 'tarot_strength', name: 'strength', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_hermit'}) SET t += {facet_count: 0, id: 'tarot_hermit', name: 'the hermit', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_wheel_of_fortune'}) SET t += {facet_count: 0, id: 'tarot_wheel_of_fortune', name: 'wheel of fortune', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_justice'}) SET t += {facet_count: 0, id: 'tarot_justice', name: 'justice', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_hanged_man'}) SET t += {facet_count: 0, id: 'tarot_hanged_man', name: 'the hanged man', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_death'}) SET t += {facet_count: 0, id: 'tarot_death', name: 'death', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_temperance'}) SET t += {facet_count: 0, id: 'tarot_temperance', name: 'temperance', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_devil'}) SET t += {facet_count: 0, id: 'tarot_devil', name: 'the devil', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_tower'}) SET t += {facet_count: 0, id: 'tarot_tower', name: 'the tower', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_star'}) SET t += {facet_count: 1, id: 'tarot_star', name: 'the star', norm: 1, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'star', class: 'feature'})
MERGE (t:Term {id: 'tarot_moon'}) SET t += {facet_count: 1, id: 'tarot_moon', name: 'the moon', norm: 1, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'moon', class: 'feature'})
MERGE (t:Term {id: 'tarot_sun'}) SET t += {facet_count: 1, id: 'tarot_sun', name: 'the sun', norm: 1, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (f:Facet {name: 'sun', class: 'feature'})
MERGE (t:Term {id: 'tarot_judgement'}) SET t += {facet_count: 0, id: 'tarot_judgement', name: 'judgement', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'tarot_world'}) SET t += {facet_count: 0, id: 'tarot_world', name: 'the world', norm: 0, updated: '2026-10-10', version: '0.1.0', vocabulary: 'symbol'}
MERGE (t:Term {id: 'everyday_wear'}) SET t += {facet_count: 0, id: 'everyday_wear', name: 'everyday wear', norm: 0, updated: '2026-09-27', version: '0.1.0', vocabulary: 'wear-context'}
MERGE (t:Term {id: 'stacks'}) SET t += {facet_count: 0, id: 'stacks', name: 'stacks', norm: 0, updated: '2026-09-27', version: '0.1.0', vocabulary: 'wear-context'}
MERGE (t:Term {id: 'special_occasion'}) SET t += {facet_count: 0, id: 'special_occasion', name: 'special occasion', norm: 0, updated: '2026-09-27', version: '0.1.0', vocabulary: 'wear-context'}
MERGE (t:Term {id: 'ceremony_commitment'}) SET t += {facet_count: 0, id: 'ceremony_commitment', name: 'ceremony and commitment', norm: 0, updated: '2026-09-27', version: '0.1.0', vocabulary: 'wear-context'}
MERGE (e:Evidence {evidence_id: 'ev-001'}) SET e += {capture: 'ebay-OL5BTOSiu8QiiMBjo', evidence_id: 'ev-001', items: 852, kind: 'apify_run', note: null, platform: 'ebay', query: null, run_id: 'OL5BTOSiu8QiiMBjo', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-002'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-002', items: null, kind: 'apify_run', note: null, platform: null, query: 'brutalist jewelry', run_id: 'WremJcxSDq7NNPQdN', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-003'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-003', items: null, kind: 'apify_run', note: null, platform: null, query: 'organic modern jewelry', run_id: '75fUSuU1nOruf4r7Q', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-004'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-004', items: null, kind: 'apify_run', note: null, platform: null, query: 'egyptian revival jewelry', run_id: 'NlMk17klLsJ9AQ3xD', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-005'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-005', items: null, kind: 'apify_run', note: null, platform: null, query: 'skonvirke jewelry', run_id: 'vrwweozPhnz5ehXfk', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-006'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-006', items: null, kind: 'apify_run', note: null, platform: null, query: 'scandinavian modern jewelry', run_id: '8AVThCBBSoijw3NLS', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-007'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-007', items: null, kind: 'apify_run', note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used', platform: null, query: 'georgian era jewelry', run_id: 'wjORe71jJLuXAhHlC', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-008'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-008', items: null, kind: 'apify_run', note: null, platform: null, query: 'victorian jewelry', run_id: 'ZDTqIuHxC0Gk9m3Ql', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-009'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-009', items: null, kind: 'apify_run', note: null, platform: null, query: 'art nouveau jewelry', run_id: 'oanH5wk9llTDtH3Ww', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-010'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-010', items: null, kind: 'apify_run', note: null, platform: null, query: 'edwardian jewelry', run_id: 'H0qI3XxLFEBWt7SZp', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-011'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-011', items: null, kind: 'apify_run', note: null, platform: null, query: 'art deco jewelry', run_id: '4hyHnBJuCCiljaRJ5', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-012'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-012', items: null, kind: 'apify_run', note: null, platform: null, query: 'retro 40s jewelry', run_id: 'QM0Se6JHJeQbiI9y1', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-013'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-013', items: null, kind: 'apify_run', note: null, platform: null, query: 'mid century modern jewelry', run_id: 'S53SEaalwJzzqfzJf', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-014'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-014', items: null, kind: 'apify_run', note: null, platform: null, query: 'celestial jewelry', run_id: 'yXttahULeQWp7hQCB', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-015'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-015', items: null, kind: 'apify_run', note: null, platform: null, query: 'gothic jewelry', run_id: 'OhgEIPTem8lS5Fwni', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-016'}) SET e += {capture: 'etsy-1500', evidence_id: 'ev-016', items: null, kind: 'apify_run', note: null, platform: null, query: 'biker jewelry', run_id: '1PPY1CE7nTUwQIiVp', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-017'}) SET e += {capture: 'drift-edge co-occurrence probes 2026-10-09', evidence_id: 'ev-017', items: 100, kind: 'apify_run', note: null, platform: 'etsy', query: 'art deco celestial jewelry', run_id: 'v8j0gsCzxSXrVZudC', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-018'}) SET e += {capture: 'drift-edge co-occurrence probes 2026-10-09', evidence_id: 'ev-018', items: 100, kind: 'apify_run', note: null, platform: 'ebay', query: 'art deco celestial jewelry', run_id: 'hyw7ikDchIZajyFm3', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-019'}) SET e += {capture: 'drift-edge co-occurrence probes 2026-10-09', evidence_id: 'ev-019', items: 100, kind: 'apify_run', note: null, platform: 'ebay', query: 'retro mid century jewelry', run_id: 'abiMX0CnL3oDNcTfK', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-020'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-020', items: 100, kind: 'apify_run', note: '71% solimet-clean, all 12 signs present', platform: 'etsy', query: 'zodiac necklace', run_id: '5rW00Wz1q2pKgGV7c', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-021'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-021', items: 100, kind: 'apify_run', note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet', platform: 'ebay', query: 'zodiac jewelry', run_id: 'F1w0ZIlLuZdg4mDDv', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-022'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-022', items: 100, kind: 'apify_run', note: '94% solimet-clean; sun 20, moon 15, star 13 cards', platform: 'etsy', query: 'tarot jewelry', run_id: 'PnyAYpCpTlw4GRS6P', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-023'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-023', items: 100, kind: 'apify_run', note: '41% solimet-clean, moonstone pollution', platform: 'etsy', query: 'celestial jewelry', run_id: 'qdjbTeYbKmrEo0IBC', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-024'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-024', items: 100, kind: 'apify_run', note: 'white gold title language; 0 platinum', platform: 'etsy', query: 'white gold necklace', run_id: 'XvGKHmBq4jOmhGMoq', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-025'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-025', items: 100, kind: 'apify_run', note: '99 clean; card counts pooled into proposal appendix', platform: 'etsy', query: 'major arcana necklace', run_id: 'X8wbkmJu9gYlEPoG9', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-026'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-026', items: 100, kind: 'apify_run', note: '98/100 on-segment, 89 clean - tarot lives on ebay', platform: 'ebay', query: 'tarot necklace', run_id: 'lOH5pbAfUvInBB86y', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-027'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-027', items: 100, kind: 'apify_run', note: '91/100 on-segment, 88 clean; resale register', platform: 'mercari-us', query: 'tarot necklace', run_id: '101dhvACIUqVTiMXO', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-028'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-028', items: 100, kind: 'apify_run', note: '97/100 on-segment, 90 clean, all 12 signs', platform: 'mercari-us', query: 'zodiac necklace', run_id: 'iBMiM4UJm2l5kzgkJ', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-029'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-029', items: 100, kind: 'apify_run', note: '80/100 on-segment, 80 clean; SEO keyword-essay register', platform: 'shein', query: 'tarot jewelry', run_id: 'RebJEMKIsN3xoJuNk', sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-030'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-030', items: null, kind: 'shopify products.json', note: 'DTC register: punny names, symbols not in titles', platform: null, query: 'evryjewels.com', run_id: null, sha256: '952fabb365e68afe546e7d180656af3aa5e70a9eafb48bfe1cd59b9530f0b606'}
MERGE (e:Evidence {evidence_id: 'ev-031'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-031', items: null, kind: 'shopify products.json', note: 'celestial 23, moon 15, tarot 3 in title+tags', platform: null, query: 'aweinspired.com', run_id: null, sha256: 'b4c60145d5bf95e0a163258ea29a365850aa1a1834b335994c29c93b2f3e94a5'}
MERGE (e:Evidence {evidence_id: 'ev-032'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-032', items: null, kind: 'shopify products.json', note: 'symbol words largely out of titles; moonstone/diamond products outside solimet', platform: null, query: 'caitlynminimalist.com', run_id: null, sha256: '4ae0caecf9bf580f529fb032d740d9efc87ae1472ad26675e89e63cea19c309b'}
MERGE (e:Evidence {evidence_id: 'ev-033'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-033', items: null, kind: 'shopify products.json', note: 'tarot decks not jewelry - excluded as evidence', platform: null, query: 'solisdivinitytarot.com', run_id: null, sha256: '544c0dc6132c90170125858f40b9c7c0e7965a43c5ebc9d7c54650adb412a68e'}
MERGE (e:Evidence {evidence_id: 'ev-034'}) SET e += {capture: 'symbol-segment capture 2026-10-09', evidence_id: 'ev-034', items: null, kind: 'shopify products.json', note: 'failed pull: products.json 404s behind redirects; saved 404 page as sabrinabi-404.html, no evidence extracted', platform: null, query: 'sabrinabi.com', run_id: null, sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-035'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-035', items: 100, kind: 'apify_run', note: '72/100 solimet-clean', platform: 'etsy', query: 'everyday necklace', run_id: '6491eagoznGlXW5IJ', sha256: '6edd4f9555c1ce8c8bea37c9917b1431a61d96dbd6b854857e3272ae0ddf5687'}
MERGE (e:Evidence {evidence_id: 'ev-036'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-036', items: 100, kind: 'apify_run', note: '82/100 solimet-clean', platform: 'etsy', query: 'stackable bangle', run_id: 'eD6b0Q07Jdf0bgjxa', sha256: '3664fca80296dfa3319c4ebc37cc8030967b9ee8b9a0be60dfdf2f8e88b9fc2a'}
MERGE (e:Evidence {evidence_id: 'ev-037'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-037', items: 100, kind: 'apify_run', note: '41/100 solimet-clean', platform: 'etsy', query: 'wedding band', run_id: 'e2GGvEgyPoAzpPWgZ', sha256: '161ba5f110ec7311a3e8e997acafb4ed82df56588a214e7d4fb7242a07f4cd5e'}
MERGE (e:Evidence {evidence_id: 'ev-038'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-038', items: 100, kind: 'apify_run', note: '10/100 solimet-clean', platform: 'etsy', query: 'anniversary band', run_id: 'khtzxsOv9NYNtukPc', sha256: 'a30e51e35f4d13b7560f08f2f62c479074a84ef8859823041c930e459733b959'}
MERGE (e:Evidence {evidence_id: 'ev-039'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-039', items: 100, kind: 'apify_run', note: '68/100 solimet-clean', platform: 'etsy', query: 'alchemy necklace', run_id: 'lQlkN1OcfbwNGctH5', sha256: 'ec0f1e71f052a6f9493ca0f143155a9e6c6679f5acf644237e35e8cb05032016'}
MERGE (e:Evidence {evidence_id: 'ev-040'}) SET e += {capture: 'wear-symbol segment capture 2026-10-09', evidence_id: 'ev-040', items: 100, kind: 'apify_run', note: '81/100 solimet-clean', platform: 'etsy', query: 'alchemical symbols necklace', run_id: 'ps1pBzK0FRuxJhQNH', sha256: 'eea95b6014e61a05c66ce0aa2bc8327c378dcc827e90c332e1fce2dcbff35965'}
MERGE (e:Evidence {evidence_id: 'ev-041'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-041', items: 100, kind: 'apify_run', note: '94/100 solimet-clean', platform: 'poshmark', query: 'tarot necklace', run_id: 'oOGR9Ne7s7AMIA8hz', sha256: 'cb1a2ce2c722c871ca81c20615131dbb00680c23841965b1e2ebebd1be55afa4'}
MERGE (e:Evidence {evidence_id: 'ev-042'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-042', items: 100, kind: 'apify_run', note: '67/100 solimet-clean', platform: 'poshmark', query: 'celestial jewelry', run_id: 'Dagx2UdkMP04AMXyl', sha256: 'c25920b6d372b4fb4778d126ae68c50be1de566aa2298656b7d9b4142666bf32'}
MERGE (e:Evidence {evidence_id: 'ev-043'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-043', items: 100, kind: 'apify_run', note: '91/100 solimet-clean', platform: 'poshmark', query: 'stackable bangle', run_id: 'xCLn3EwhYvkhErSJd', sha256: 'a6c69e616ab0204b5f831403fe96586f464d55cd32bbde056cce65e4a32d16eb'}
MERGE (e:Evidence {evidence_id: 'ev-044'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-044', items: 100, kind: 'apify_run', note: '85/100 solimet-clean', platform: 'poshmark', query: 'everyday necklace', run_id: '6Zl5qFPfXeytBHtLi', sha256: 'f99a80c9a2af82c40ff776d721f9e3cb520268178cf40326473552e302402d25'}
MERGE (e:Evidence {evidence_id: 'ev-045'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-045', items: 100, kind: 'apify_run', note: '90/100 solimet-clean', platform: 'poshmark', query: 'zodiac necklace', run_id: 'pKCdhAgm8er3iwtnt', sha256: '1c8f3e0cfee78fac74d2fba605861d772d575efbac6e71b4fd361ad5349ad264'}
MERGE (e:Evidence {evidence_id: 'ev-046'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-046', items: 100, kind: 'apify_run', note: '27/100 solimet-clean', platform: 'poshmark', query: 'anniversary band', run_id: 'Y5EY1BzNY8WhIs9er', sha256: '9fd45b1acb956c0fa43c7670df747d924c82bc04278e3883172fc2b151024c19'}
MERGE (e:Evidence {evidence_id: 'ev-047'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-047', items: 100, kind: 'apify_run', note: '79/100 solimet-clean', platform: 'poshmark', query: 'alchemy necklace', run_id: 'UmqbS7nAcHJcAX1WN', sha256: '327f0196a316e0e6d64519982ff5d5c2e566504296a31c802b5bc18d14337b6e'}
MERGE (e:Evidence {evidence_id: 'ev-048'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-048', items: 100, kind: 'apify_run', note: '79/100 solimet-clean', platform: 'poshmark', query: 'wedding band', run_id: 'QsogSQRuTKRU7X0hB', sha256: 'a7d1e9e394bf814cebb72511ef1214b10281a3465d874b76ab1f1204bcfb5941'}
MERGE (e:Evidence {evidence_id: 'ev-049'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-049', items: 100, kind: 'apify_run', note: '98/100 solimet-clean', platform: 'poshmark', query: 'alchemical symbols necklace', run_id: 'kXrDyiMEbl8b0ZiWm', sha256: '732c1cb76fd0f9b5ff04b4877cb1f1dec62b64cb08c67064798aabea735a9511'}
MERGE (e:Evidence {evidence_id: 'ev-050'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-050', items: 25, kind: 'apify_run', note: '19/25 solimet-clean', platform: 'mercari', query: 'everyday necklace', run_id: 'NtRpd6h3cGJ0ZjEVw', sha256: '691e4704783c83a197c3e550c9fc3b031bca8081590dad35d7d6695138ee1896'}
MERGE (e:Evidence {evidence_id: 'ev-051'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-051', items: 25, kind: 'apify_run', note: '8/25 solimet-clean', platform: 'mercari', query: 'anniversary band', run_id: 'pUdgsciznzxpeMcx4', sha256: '1dae7f7d1bbe8764290a4d7775d4e9536a4e4816df867dbd1b7eaa3f173cf115'}
MERGE (e:Evidence {evidence_id: 'ev-052'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-052', items: 0, kind: 'apify_run', note: '0/0 solimet-clean', platform: 'mercari', query: 'alchemy necklace', run_id: 'KiJpQLW9zkW3HxIFF', sha256: '4f53cda18c2baa0c0354bb5f9a3ecbe5ed12ab4d8e11ba873c2f11161202b945'}
MERGE (e:Evidence {evidence_id: 'ev-053'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-053', items: 25, kind: 'apify_run', note: '23/25 solimet-clean', platform: 'mercari', query: 'stackable bangle', run_id: 'bk632MSZu8djiiUmJ', sha256: 'ed8b900f1e3828989393eb9d421b9c5b5e62ac526aeda0c814e35758ab115776'}
MERGE (e:Evidence {evidence_id: 'ev-054'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-054', items: 25, kind: 'apify_run', note: '21/25 solimet-clean', platform: 'mercari', query: 'wedding band', run_id: 'Bg2ULcHku3Ug3p54M', sha256: 'be31e2d4ed99e21862db7be6f7213ddc5af8cad60b5154db118e41147be62c13'}
MERGE (e:Evidence {evidence_id: 'ev-055'}) SET e += {capture: 'poshmark-mercari capture 2026-10-10', evidence_id: 'ev-055', items: 0, kind: 'apify_run', note: '0/0 solimet-clean', platform: 'mercari', query: 'alchemical symbols necklace', run_id: 'NihVDSZXl29haLMr4', sha256: '4f53cda18c2baa0c0354bb5f9a3ecbe5ed12ab4d8e11ba873c2f11161202b945'}
MERGE (e:Evidence {evidence_id: 'ev-056'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-056', items: 60, kind: 'apify_run', note: '43/60 solimet-clean', platform: 'ebay', query: 'everyday necklace', run_id: 'hFf0YkynaWBbqDcTZ', sha256: '22efd788e09ac471c47fe192d54ba3c66dd029c56ccaba8187727ce3a85dbc02'}
MERGE (e:Evidence {evidence_id: 'ev-057'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-057', items: 60, kind: 'apify_run', note: '33/60 solimet-clean', platform: 'ebay', query: 'stackable bangle', run_id: '1zQhYMhAmwOawX2Sy', sha256: 'f10f3f57b0263bcb7cca30f165477c9927bd2c513bfabfbaa3f220354b5764b2'}
MERGE (e:Evidence {evidence_id: 'ev-058'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-058', items: 60, kind: 'apify_run', note: '23/60 solimet-clean', platform: 'ebay', query: 'wedding band', run_id: '68CW876mMAutGkCK0', sha256: '85823cdcba27b61db26f28f3e3bd5fadf0de66a50653a1cf33812dcbdf65c6c3'}
MERGE (e:Evidence {evidence_id: 'ev-059'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-059', items: 60, kind: 'apify_run', note: '12/60 solimet-clean', platform: 'ebay', query: 'anniversary band', run_id: 'oZIFnh3Dh2LPwBiWe', sha256: 'dfd18ee298866e850090193fa20901122bb467a91d3cce2f2d646d6fb1f4a7b8'}
MERGE (e:Evidence {evidence_id: 'ev-060'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-060', items: 100, kind: 'apify_run', note: '3/100 solimet-clean', platform: 'etsy', query: 'eternity band', run_id: '2EbDJV2Fe1g6G7Jmc', sha256: '575536a514f84e2b78184696a01fa2a5317ab3983ad35cce9da1c87e0b1f3e1c'}
MERGE (e:Evidence {evidence_id: 'ev-061'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-061', items: 60, kind: 'apify_run', note: '0/60 solimet-clean', platform: 'ebay', query: 'eternity band', run_id: 'sT8m6hOJLdGTWByOc', sha256: '4cac1aed1babebb5ebe7472a9ef9f07eaa5e6e55b280316011f9292a7210a3bf'}
MERGE (e:Evidence {evidence_id: 'ev-062'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-062', items: 100, kind: 'apify_run', note: '26/100 solimet-clean', platform: 'etsy', query: 'promise ring', run_id: '0Vzjuc28jXYz5ZA81', sha256: '9bf987f3e9a196e4786832f9d4818f77c90381bde822393f483532cf1bc03d81'}
MERGE (e:Evidence {evidence_id: 'ev-063'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-063', items: 60, kind: 'apify_run', note: '29/60 solimet-clean', platform: 'ebay', query: 'promise ring', run_id: '9oX1L7NJFNNctTqX0', sha256: '2c304bee8cf3bda04c03c78f462db52425ba860063e3e2295f41fb00c4a96cef'}
MERGE (e:Evidence {evidence_id: 'ev-064'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-064', items: 100, kind: 'apify_run', note: '86/100 solimet-clean', platform: 'depop', query: 'zodiac necklace', run_id: 'CnyoxDQsRXIi1RzjJ', sha256: '747922a6dd9279bdeebb892ff06f37beacbcb62d15f194b32675058818fa3c5f'}
MERGE (e:Evidence {evidence_id: 'ev-065'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-065', items: 60, kind: 'apify_run', note: '53/60 solimet-clean', platform: 'ebay', query: 'alchemy necklace', run_id: 'wMv4K5OfiFiPY36VP', sha256: '76c78ffe50355afe92cad354a540ed45241506e6d8db1e737f64eb3d06f6e769'}
MERGE (e:Evidence {evidence_id: 'ev-066'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-066', items: 100, kind: 'apify_run', note: '84/100 solimet-clean', platform: 'depop', query: 'everyday necklace', run_id: 'uVnc0PfW1qhvTakll', sha256: '8f96b7def29a8f44c17ff22d2e2c05367bf33b12422e985128e79042e84c0727'}
MERGE (e:Evidence {evidence_id: 'ev-067'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-067', items: 76, kind: 'apify_run', note: '71/76 solimet-clean', platform: 'ebay', query: 'alchemical symbols necklace', run_id: 'vf0a0tyH5PxGhktl9', sha256: '934c64baed98d1823cdbef3dae3ed59be8159bb07d178a2a35ff3e5367ab911e'}
MERGE (e:Evidence {evidence_id: 'ev-068'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-068', items: 100, kind: 'apify_run', note: '76/100 solimet-clean; probe-format input, actor ignores maxItems', platform: 'shein', query: 'zodiac necklace', run_id: 'kjW7CTr9FAyOV3IDu', sha256: 'c3a1306b55dfe3e4b98b069b55f39f8ed703452d990a81480374ef7ffe7a7d57'}
MERGE (e:Evidence {evidence_id: 'ev-069'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-069', items: 0, kind: 'apify_run', note: 'actor returned 0 items on both attempts (7 runs total, all empty except zodiac probe). non-evidence.', platform: 'shein', query: 'everyday necklace', run_id: null, sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-070'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-070', items: 0, kind: 'apify_run', note: 'actor returned 0 items on both attempts (7 runs total, all empty except zodiac probe). non-evidence.', platform: 'shein', query: 'stackable bangle', run_id: null, sha256: null}
MERGE (e:Evidence {evidence_id: 'ev-071'}) SET e += {capture: 'ebay-shein-depop-etsy battery 2026-10-10', evidence_id: 'ev-071', items: 0, kind: 'apify_run', note: 'actor returned 0 items on both attempts (7 runs total, all empty except zodiac probe). non-evidence.', platform: 'shein', query: 'wedding band', run_id: null, sha256: null}
MERGE (p:Profile {profile_id: 'profile-001-gothic-biker'}) SET p += {status: 'draft', version: '0.1.0'}
MERGE (p:Profile {profile_id: 'profile-002-antique-cluster'}) SET p += {status: 'draft', version: '0.1.0'}
MERGE (p:Profile {profile_id: 'profile-003-celestial-dreamer'}) SET p += {status: 'draft', version: '0.1.0'}
MERGE (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}) SET p += {status: 'draft', version: '0.1.0'}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'cannetille', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'floral', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'nature', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'ornate', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\', \'axes\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'repousse', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'georgian'}), (f:Facet {name: 'scrollwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5788182372}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.7, facet: 'antique', left: 1, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'nature'}]->(b) SET x += {contribution: 0.4, facet: 'nature', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.36, facet: 'floral', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5679984805}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.9, facet: 'antique', left: 1, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.56, facet: 'ornate', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.24, facet: 'floral', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4316788452}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.8, facet: 'antique', left: 1, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3414121943}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.6, facet: 'antique', left: 1, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3356380283}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.4, facet: 'antique', left: 1, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.35, facet: 'ornate', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'georgian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'bird', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'floral', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'heart', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'knot', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'organic', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'scrollwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'serpent', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'victorian'}), (f:Facet {name: 'tree', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5679984805}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.9, facet: 'antique', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.56, facet: 'ornate', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.24, facet: 'floral', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5345418851}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.63, facet: 'antique', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'organic'}]->(b) SET x += {contribution: 0.57, facet: 'organic', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.95, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.54, facet: 'floral', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3356481481}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.72, facet: 'antique', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.2782775069}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.54, facet: 'antique', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2631493556}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.4, facet: 'ornate', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.36, facet: 'antique', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'axis'}
MATCH (a:Term {id: 'victorian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'floral', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'freeform_asymmetry', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'nature', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'organic', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.95, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'scrollwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_nouveau'}), (f:Facet {name: 'whiplash_curve', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5788182372}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.7, facet: 'antique', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'nature'}]->(b) SET x += {contribution: 0.4, facet: 'nature', left: 0.8, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.36, facet: 'floral', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5345418851}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.63, facet: 'antique', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'organic'}]->(b) SET x += {contribution: 0.57, facet: 'organic', left: 0.95, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'floral'}]->(b) SET x += {contribution: 0.54, facet: 'floral', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.458778311}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'organic'}]->(b) SET x += {contribution: 0.8075, facet: 'organic', left: 0.95, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.85, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'nature'}]->(b) SET x += {contribution: 0.56, facet: 'nature', left: 0.8, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'whiplash_curve'}]->(b) SET x += {contribution: 0.5, facet: 'whiplash_curve', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.2532040508}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.56, facet: 'antique', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2021750522}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.3, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.28, facet: 'antique', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'axis'}
MATCH (a:Term {id: 'art_nouveau'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'bow', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'dainty', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'garland', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'lace', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'ribbon', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'edwardian'}), (f:Facet {name: 'scrollwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4316788452}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.8, facet: 'antique', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.3356481481}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.72, facet: 'antique', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3204690172}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'bow'}]->(b) SET x += {contribution: 0.36, facet: 'bow', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.32, facet: 'antique', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.3, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.2532040508}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.56, facet: 'antique', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2291697116}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.48, facet: 'antique', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'edwardian'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'calibre', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'chevron', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'clean', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'contrast', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'fan', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'geometric', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'geometric_step', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'sun_motif', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'sunburst', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'symmetry', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.85, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'art_deco'}), (f:Facet {name: 'zigzag', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.2701201623}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'geometric'}]->(b) SET x += {contribution: 0.45, facet: 'geometric', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.36, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'geometric_step'}]->(b) SET x += {contribution: 0.36, facet: 'geometric_step', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'feature'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.1441987968}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.6, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.116656161}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'clean'}]->(b) SET x += {contribution: 0.56, facet: 'clean', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.1057799168}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.54, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.0940265927}
MATCH (a:Term {id: 'art_deco'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.48, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'bold_curves', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'bow', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'chunky', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'dimensional_goldwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'fabric_motif', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'postwar_era', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'scrollwork', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'retro'}), (f:Facet {name: 'sphere', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.3356380283}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.4, facet: 'antique', left: 0.4, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.35, facet: 'ornate', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.3, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.3204690172}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'bow'}]->(b) SET x += {contribution: 0.36, facet: 'bow', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.32, facet: 'antique', left: 0.4, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.3, facet: 'ornate', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.2631493556}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.4, facet: 'ornate', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.36, facet: 'antique', left: 0.4, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'biker'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.2114539725}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'chunky'}]->(b) SET x += {contribution: 0.72, facet: 'chunky', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2021750522}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.3, facet: 'ornate', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.28, facet: 'antique', left: 0.4, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'retro'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'scrollwork'}]->(b) SET x += {contribution: 0.25, facet: 'scrollwork', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'feature'}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'abstract_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'clean', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'clean_line', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'geometric_abstract', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'modern', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'postwar_era', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'sculptural_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'mid_century_modernist'}), (f:Facet {name: 'sphere', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4247442548}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.64, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'sculptural_form'}]->(b) SET x += {contribution: 0.48, facet: 'sculptural_form', left: 0.8, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'clean'}]->(b) SET x += {contribution: 0.4, facet: 'clean', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'brutalist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.136438536}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.56, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.1357648078}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'postwar_era'}]->(b) SET x += {contribution: 0.25, facet: 'postwar_era', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.5, right_class: 'axis'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'sphere'}]->(b) SET x += {contribution: 0.24, facet: 'sphere', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'biker'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.1331895334}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.48, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'art_deco'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.116656161}
MATCH (a:Term {id: 'mid_century_modernist'}), (b:Term {id: 'art_deco'}) MERGE (a)-[x:SHARES_FACET {facet: 'clean'}]->(b) SET x += {contribution: 0.56, facet: 'clean', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'architectural_mass', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'chunky', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'heavy_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'industrial', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'modern', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'raw', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'brutalist'}), (f:Facet {name: 'raw_texture', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'biker'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.624966319}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'chunky'}]->(b) SET x += {contribution: 0.81, facet: 'chunky', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'raw'}]->(b) SET x += {contribution: 0.63, facet: 'raw', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'heavy_form'}]->(b) SET x += {contribution: 0.56, facet: 'heavy_form', left: 0.8, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.42, facet: 'modern', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.1856675524}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'chunky'}]->(b) SET x += {contribution: 0.72, facet: 'chunky', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.1456412303}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.56, facet: 'modern', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.136438536}
MATCH (a:Term {id: 'brutalist'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.56, facet: 'modern', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'biomorphic_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'clean', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'modern', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'nature', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'organic', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.85, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'sculptural_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'organic_modern'}), (f:Facet {name: 'whiplash_curve', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.458778311}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'organic'}]->(b) SET x += {contribution: 0.8075, facet: 'organic', left: 0.85, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.95, right_class: 'axis'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'nature'}]->(b) SET x += {contribution: 0.56, facet: 'nature', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'feature'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'whiplash_curve'}]->(b) SET x += {contribution: 0.5, facet: 'whiplash_curve', left: 0.5, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4247442548}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.64, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'sculptural_form'}]->(b) SET x += {contribution: 0.48, facet: 'sculptural_form', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'feature'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'clean'}]->(b) SET x += {contribution: 0.4, facet: 'clean', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'brutalist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.1456412303}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.56, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'biker'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.1421730845}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.48, facet: 'modern', left: 0.8, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.1340120681}
MATCH (a:Term {id: 'organic_modern'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'organic'}]->(b) SET x += {contribution: 0.51, facet: 'organic', left: 0.85, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'constellation_dot', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'crescent', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'dark_celestial_motif', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'moon', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'star', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'sun', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'celestial'}), (f:Facet {name: 'sun_motif', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_star'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5083285678}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_star'}) MERGE (a)-[x:SHARES_FACET {facet: 'star'}]->(b) SET x += {contribution: 1, facet: 'star', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.457495711}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 0.9, facet: 'moon', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3558299974}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 0.7, facet: 'sun', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3234983196}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 0.9, facet: 'moon', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2641352719}
MATCH (a:Term {id: 'celestial'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 0.9, facet: 'moon', left: 0.9, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'chain', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'cross', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'dagger', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'dark', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'dark_celestial_motif', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'dark_ornate', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'oxidized_finish', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'point', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'gothic'}), (f:Facet {name: 'skull', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.1172612665}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.1092309227}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.0965536164}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'egyptian_revival'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.0961724649}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.24, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'axis'}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'dark_celestial_motif'}]->(b) SET x += {contribution: 0.16, facet: 'dark_celestial_motif', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.4, right_class: 'feature'}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'biker'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.0923441272}
MATCH (a:Term {id: 'gothic'}), (b:Term {id: 'biker'}) MERGE (a)-[x:SHARES_FACET {facet: 'skull'}]->(b) SET x += {contribution: 0.36, facet: 'skull', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'chain_link', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'chunky', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.9, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'heavy_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'modern', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'raw', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'rope_twist', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'biker'}), (f:Facet {name: 'skull', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'brutalist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.624966319}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'chunky'}]->(b) SET x += {contribution: 0.81, facet: 'chunky', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'raw'}]->(b) SET x += {contribution: 0.63, facet: 'raw', left: 0.7, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'heavy_form'}]->(b) SET x += {contribution: 0.56, facet: 'heavy_form', left: 0.7, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'feature'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'brutalist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.42, facet: 'modern', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'retro'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.2114539725}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'retro'}) MERGE (a)-[x:SHARES_FACET {facet: 'chunky'}]->(b) SET x += {contribution: 0.72, facet: 'chunky', left: 0.9, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.1421730845}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'organic_modern'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.48, facet: 'modern', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.1331895334}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'mid_century_modernist'}) MERGE (a)-[x:SHARES_FACET {facet: 'modern'}]->(b) SET x += {contribution: 0.48, facet: 'modern', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'gothic'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.0923441272}
MATCH (a:Term {id: 'biker'}), (b:Term {id: 'gothic'}) MERGE (a)-[x:SHARES_FACET {facet: 'skull'}]->(b) SET x += {contribution: 0.36, facet: 'skull', left: 0.6, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'feature'}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'antique', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'eye_of_horus', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'geometric', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.5, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'geometric_step', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.4, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'lotus', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.8, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'ornate', class: 'axis'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.6, sources: '[\'axes\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'pyramid_form', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (t:Term {id: 'egyptian_revival'}), (f:Facet {name: 'scarab', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 0.7, sources: '[\'features\']', weight: 1}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'georgian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.3414121943}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.6, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'georgian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.42, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'victorian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.2782775069}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.54, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'victorian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.48, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_deco'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.2701201623}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_deco'}) MERGE (a)-[x:SHARES_FACET {facet: 'geometric'}]->(b) SET x += {contribution: 0.45, facet: 'geometric', left: 0.5, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_deco'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.36, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_deco'}) MERGE (a)-[x:SHARES_FACET {facet: 'geometric_step'}]->(b) SET x += {contribution: 0.36, facet: 'geometric_step', left: 0.4, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'edwardian'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.2291697116}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.48, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.8, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'edwardian'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.1989486833}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'antique'}]->(b) SET x += {contribution: 0.42, facet: 'antique', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'axis'}
MATCH (a:Term {id: 'egyptian_revival'}), (b:Term {id: 'art_nouveau'}) MERGE (a)-[x:SHARES_FACET {facet: 'ornate'}]->(b) SET x += {contribution: 0.36, facet: 'ornate', left: 0.6, left_class: 'axis', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.6, right_class: 'axis'}
MATCH (t:Term {id: 'metal_gold'}), (f:Facet {name: 'gold', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'metal_gold'}), (f:Facet {name: 'sun', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.7071067812}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'element_earth'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'element_earth'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'element_fire'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.5}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'element_fire'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.2516098041}
MATCH (a:Term {id: 'metal_gold'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 0.7, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (t:Term {id: 'metal_silver'}), (f:Facet {name: 'moon', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (t:Term {id: 'metal_silver'}), (f:Facet {name: 'silver', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.7071067812}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'element_air'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'element_air'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'element_water'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.5}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'element_water'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3234983196}
MATCH (a:Term {id: 'metal_silver'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 0.9, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (t:Term {id: 'metal_platinum'}), (f:Facet {name: 'platinum', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'metal_copper'}), (f:Facet {name: 'copper', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'metal_copper'}), (f:Facet {name: 'venus', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (a:Term {id: 'metal_copper'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'metal_copper'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[x:SHARES_FACET {facet: 'venus'}]->(b) SET x += {contribution: 1, facet: 'venus', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_copper'}), (b:Term {id: 'sign_taurus'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'metal_copper'}), (b:Term {id: 'sign_taurus'}) MERGE (a)-[x:SHARES_FACET {facet: 'venus'}]->(b) SET x += {contribution: 1, facet: 'venus', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'metal_iron'}), (f:Facet {name: 'iron', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'metal_iron'}), (f:Facet {name: 'mars', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (a:Term {id: 'metal_iron'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'metal_iron'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'mars'}]->(b) SET x += {contribution: 1, facet: 'mars', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_iron'}), (b:Term {id: 'sign_scorpio'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'metal_iron'}), (b:Term {id: 'sign_scorpio'}) MERGE (a)-[x:SHARES_FACET {facet: 'mars'}]->(b) SET x += {contribution: 1, facet: 'mars', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'metal_tin'}), (f:Facet {name: 'jupiter', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (t:Term {id: 'metal_tin'}), (f:Facet {name: 'tin', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (a:Term {id: 'metal_tin'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'metal_tin'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_tin'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'metal_tin'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'metal_lead'}), (f:Facet {name: 'lead', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'metal_lead'}), (f:Facet {name: 'saturn', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'planet\']', weight: 1}
MATCH (a:Term {id: 'metal_lead'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'metal_lead'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_lead'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'metal_lead'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'metal_mercury'}), (f:Facet {name: 'mercury', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\', \'planet\']', weight: 1}
MATCH (a:Term {id: 'metal_mercury'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5773502692}
MATCH (a:Term {id: 'metal_mercury'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'metal_mercury'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5773502692}
MATCH (a:Term {id: 'metal_mercury'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'element_fire'}), (f:Facet {name: 'fire', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'element_fire'}), (f:Facet {name: 'gold', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'metal_affinity\']', weight: 1}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'element_earth'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'element_earth'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.4082482905}
MATCH (a:Term {id: 'element_fire'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'element_earth'}), (f:Facet {name: 'earth', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'element_earth'}), (f:Facet {name: 'gold', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'metal_affinity\']', weight: 1}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'element_fire'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'element_fire'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[x:SHARES_FACET {facet: 'gold'}]->(b) SET x += {contribution: 1, facet: 'gold', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_taurus'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_taurus'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.4082482905}
MATCH (a:Term {id: 'element_earth'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'element_air'}), (f:Facet {name: 'air', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (t:Term {id: 'element_air'}), (f:Facet {name: 'silver', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'metal_affinity\']', weight: 1}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'element_water'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'element_water'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.4082482905}
MATCH (a:Term {id: 'element_air'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'element_water'}), (f:Facet {name: 'silver', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'metal_affinity\']', weight: 1}
MATCH (t:Term {id: 'element_water'}), (f:Facet {name: 'water', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'symbol_id\']', weight: 1}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'element_air'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'element_air'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[x:SHARES_FACET {facet: 'silver'}]->(b) SET x += {contribution: 1, facet: 'silver', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.4082482905}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_scorpio'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.4082482905}
MATCH (a:Term {id: 'element_water'}), (b:Term {id: 'sign_scorpio'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_aries'}), (f:Facet {name: 'cardinal', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_aries'}), (f:Facet {name: 'fire', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_aries'}), (f:Facet {name: 'mars', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'element_fire'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'element_fire'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'metal_iron'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'metal_iron'}) MERGE (a)-[x:SHARES_FACET {facet: 'mars'}]->(b) SET x += {contribution: 1, facet: 'mars', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aries'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_taurus'}), (f:Facet {name: 'earth', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_taurus'}), (f:Facet {name: 'fixed', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_taurus'}), (f:Facet {name: 'venus', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'element_earth'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'element_earth'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'metal_copper'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'metal_copper'}) MERGE (a)-[x:SHARES_FACET {facet: 'venus'}]->(b) SET x += {contribution: 1, facet: 'venus', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'fixed'}]->(b) SET x += {contribution: 1, facet: 'fixed', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_taurus'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'fixed'}]->(b) SET x += {contribution: 1, facet: 'fixed', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_gemini'}), (f:Facet {name: 'air', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_gemini'}), (f:Facet {name: 'mercury', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_gemini'}), (f:Facet {name: 'mutable', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.6666666667}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_virgo'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'metal_mercury'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5773502692}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'metal_mercury'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'element_air'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'element_air'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_gemini'}), (b:Term {id: 'sign_libra'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_cancer'}), (f:Facet {name: 'cardinal', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_cancer'}), (f:Facet {name: 'moon', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_cancer'}), (f:Facet {name: 'water', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5773502692}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'tarot_moon'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'element_water'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'element_water'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_cancer'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_leo'}), (f:Facet {name: 'fire', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_leo'}), (f:Facet {name: 'fixed', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_leo'}), (f:Facet {name: 'sun', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5773502692}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'tarot_sun'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'element_fire'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'element_fire'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'fixed'}]->(b) SET x += {contribution: 1, facet: 'fixed', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_leo'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_virgo'}), (f:Facet {name: 'earth', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_virgo'}), (f:Facet {name: 'mercury', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_virgo'}), (f:Facet {name: 'mutable', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.6666666667}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'metal_mercury'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5773502692}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'metal_mercury'}) MERGE (a)-[x:SHARES_FACET {facet: 'mercury'}]->(b) SET x += {contribution: 1, facet: 'mercury', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'element_earth'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'element_earth'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_virgo'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_libra'}), (f:Facet {name: 'air', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_libra'}), (f:Facet {name: 'cardinal', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_libra'}), (f:Facet {name: 'venus', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'element_air'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'element_air'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'metal_copper'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'metal_copper'}) MERGE (a)-[x:SHARES_FACET {facet: 'venus'}]->(b) SET x += {contribution: 1, facet: 'venus', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_libra'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_scorpio'}), (f:Facet {name: 'fixed', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_scorpio'}), (f:Facet {name: 'mars', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_scorpio'}), (f:Facet {name: 'water', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'element_water'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'element_water'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'metal_iron'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'metal_iron'}) MERGE (a)-[x:SHARES_FACET {facet: 'mars'}]->(b) SET x += {contribution: 1, facet: 'mars', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'fixed'}]->(b) SET x += {contribution: 1, facet: 'fixed', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'mars'}]->(b) SET x += {contribution: 1, facet: 'mars', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_scorpio'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_sagittarius'}), (f:Facet {name: 'fire', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_sagittarius'}), (f:Facet {name: 'jupiter', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_sagittarius'}), (f:Facet {name: 'mutable', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.6666666667}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_pisces'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'element_fire'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'element_fire'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'metal_tin'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'metal_tin'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'fire'}]->(b) SET x += {contribution: 1, facet: 'fire', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_sagittarius'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_capricorn'}), (f:Facet {name: 'cardinal', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_capricorn'}), (f:Facet {name: 'earth', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_capricorn'}), (f:Facet {name: 'saturn', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'element_earth'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'element_earth'}) MERGE (a)-[x:SHARES_FACET {facet: 'earth'}]->(b) SET x += {contribution: 1, facet: 'earth', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'metal_lead'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'metal_lead'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_aquarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_aries'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_capricorn'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'cardinal'}]->(b) SET x += {contribution: 1, facet: 'cardinal', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_aquarius'}), (f:Facet {name: 'air', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (t:Term {id: 'sign_aquarius'}), (f:Facet {name: 'fixed', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_aquarius'}), (f:Facet {name: 'saturn', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'element_air'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.4082482905}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'element_air'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'metal_lead'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'metal_lead'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_capricorn'}) MERGE (a)-[x:SHARES_FACET {facet: 'saturn'}]->(b) SET x += {contribution: 1, facet: 'saturn', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'air'}]->(b) SET x += {contribution: 1, facet: 'air', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_aquarius'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'fixed'}]->(b) SET x += {contribution: 1, facet: 'fixed', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'sign_pisces'}), (f:Facet {name: 'jupiter', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'ruler\']', weight: 1}
MATCH (t:Term {id: 'sign_pisces'}), (f:Facet {name: 'mutable', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'modality\']', weight: 1}
MATCH (t:Term {id: 'sign_pisces'}), (f:Facet {name: 'water', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'element\']', weight: 1}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.6666666667}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_sagittarius'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'element_water'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.4082482905}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'element_water'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'metal_tin'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.4082482905}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'metal_tin'}) MERGE (a)-[x:SHARES_FACET {facet: 'jupiter'}]->(b) SET x += {contribution: 1, facet: 'jupiter', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.3333333333}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'water'}]->(b) SET x += {contribution: 1, facet: 'water', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.3333333333}
MATCH (a:Term {id: 'sign_pisces'}), (b:Term {id: 'sign_gemini'}) MERGE (a)-[x:SHARES_FACET {facet: 'mutable'}]->(b) SET x += {contribution: 1, facet: 'mutable', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'tarot_star'}), (f:Facet {name: 'star', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'motifs\']', weight: 1}
MATCH (a:Term {id: 'tarot_star'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.5083285678}
MATCH (a:Term {id: 'tarot_star'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'star'}]->(b) SET x += {contribution: 1, facet: 'star', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (t:Term {id: 'tarot_moon'}), (f:Facet {name: 'moon', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'motifs\']', weight: 1}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.7071067812}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'metal_silver'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5773502692}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'sign_cancer'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 1, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.457495711}
MATCH (a:Term {id: 'tarot_moon'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'moon'}]->(b) SET x += {contribution: 0.9, facet: 'moon', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.9, right_class: 'feature'}
MATCH (t:Term {id: 'tarot_sun'}), (f:Facet {name: 'sun', class: 'feature'}) MERGE (t)-[h:HAS_FACET]->(f) SET h += {raw: 1, sources: '[\'motifs\']', weight: 1}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.7071067812}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'metal_gold'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.5773502692}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'sign_leo'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 1, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 1, right_class: 'feature'}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'celestial'}) MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.3558299974}
MATCH (a:Term {id: 'tarot_sun'}), (b:Term {id: 'celestial'}) MERGE (a)-[x:SHARES_FACET {facet: 'sun'}]->(b) SET x += {contribution: 0.7, facet: 'sun', left: 1, left_class: 'feature', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', right: 0.7, right_class: 'feature'}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-001'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 852, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-002'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-003'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-004'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-005'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-006'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-007'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'plain \'georgian jewelry\' returned zero items on etsy; \'georgian era jewelry\' used'}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-008'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-009'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-010'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-011'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-012'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-013'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-014'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-015'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'georgian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'victorian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'art_nouveau'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'edwardian'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'brutalist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'organic_modern'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'gothic'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'biker'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-016'}), (t:Term {id: 'egyptian_revival'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-017'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-017'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-017'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-017'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-018'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-018'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-018'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-018'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-019'}), (t:Term {id: 'retro'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-019'}), (t:Term {id: 'mid_century_modernist'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-019'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-019'}), (t:Term {id: 'art_deco'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: ''}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-020'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '71% solimet-clean, all 12 signs present'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-021'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'CORRECTION: not empty - 74/100 on-segment, but stone-heavy crystal-healing segment, outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-022'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94% solimet-clean; sun 20, moon 15, star 13 cards'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-023'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41% solimet-clean, moonstone pollution'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-024'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: 'white gold title language; 0 platinum'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-025'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '99 clean; card counts pooled into proposal appendix'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-026'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 on-segment, 89 clean - tarot lives on ebay'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-027'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 on-segment, 88 clean; resale register'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-028'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '97/100 on-segment, 90 clean, all 12 signs'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-029'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '80/100 on-segment, 80 clean; SEO keyword-essay register'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-030'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'DTC register: punny names, symbols not in titles'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-031'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'celestial 23, moon 15, tarot 3 in title+tags'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-032'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: null, note: 'symbol words largely out of titles; moonstone/diamond products outside solimet'}
MATCH (e:Evidence {evidence_id: 'ev-035'}), (t:Term {id: 'everyday_wear'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '72/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-036'}), (t:Term {id: 'stacks'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '82/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-037'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '41/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-038'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '10/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-039'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '68/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-040'}), (t:Term {id: 'element_air'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '81/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-040'}), (t:Term {id: 'element_earth'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '81/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-040'}), (t:Term {id: 'element_fire'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '81/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-040'}), (t:Term {id: 'element_water'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '81/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-040'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '81/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_fool'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_magician'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_high_priestess'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_empress'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_lovers'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_chariot'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_strength'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_hermit'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_wheel_of_fortune'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_justice'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_hanged_man'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_death'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_temperance'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_devil'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_tower'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_star'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_moon'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_sun'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_judgement'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-041'}), (t:Term {id: 'tarot_world'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '94/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-042'}), (t:Term {id: 'celestial'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '67/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-043'}), (t:Term {id: 'stacks'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '91/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-044'}), (t:Term {id: 'everyday_wear'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '85/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-045'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '90/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-046'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '27/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-047'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '79/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-048'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '79/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-049'}), (t:Term {id: 'element_air'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-049'}), (t:Term {id: 'element_earth'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-049'}), (t:Term {id: 'element_fire'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-049'}), (t:Term {id: 'element_water'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-049'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '98/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-050'}), (t:Term {id: 'everyday_wear'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 25, note: '19/25 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-051'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 25, note: '8/25 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-053'}), (t:Term {id: 'stacks'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 25, note: '23/25 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-054'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 25, note: '21/25 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-056'}), (t:Term {id: 'everyday_wear'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '43/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-057'}), (t:Term {id: 'stacks'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '33/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-058'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '23/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-059'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '12/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-060'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '3/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-061'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '0/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-062'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '26/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-063'}), (t:Term {id: 'ceremony_commitment'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '29/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-064'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '86/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-065'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 60, note: '53/60 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-066'}), (t:Term {id: 'everyday_wear'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '84/100 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-067'}), (t:Term {id: 'element_air'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 76, note: '71/76 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-067'}), (t:Term {id: 'element_earth'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 76, note: '71/76 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-067'}), (t:Term {id: 'element_fire'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 76, note: '71/76 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-067'}), (t:Term {id: 'element_water'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 76, note: '71/76 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-067'}), (t:Term {id: 'metal_mercury'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 76, note: '71/76 solimet-clean'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_aries'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_taurus'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_gemini'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_cancer'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_leo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_virgo'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_libra'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_scorpio'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_sagittarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_capricorn'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_aquarius'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (e:Evidence {evidence_id: 'ev-068'}), (t:Term {id: 'sign_pisces'}) MERGE (e)-[s:SUPPORTS]->(t) SET s += {items: 100, note: '76/100 solimet-clean; probe-format input, actor ignores maxItems'}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'biker'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.9}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'gothic'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 1.0}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'brutalist'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.400111966}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'retro'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.190036108}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'organic_modern'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.091021149}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'mid_century_modernist'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.085269757}
MATCH (p:Profile {profile_id: 'profile-001-gothic-biker'}), (t:Term {id: 'georgian'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.083413626}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'art_nouveau'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.6}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'edwardian'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.8}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'georgian'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.9}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'victorian'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 1.0}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'retro'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.369817348}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'egyptian_revival'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.348382868}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'organic_modern'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.200353311}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'art_deco'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.139992235}
MATCH (p:Profile {profile_id: 'profile-002-antique-cluster'}), (t:Term {id: 'gothic'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.127962389}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'celestial'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 1.0}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'element_water'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.5}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'metal_silver'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.5}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'sign_cancer'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.4}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'tarot_moon'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.625911902}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'tarot_star'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.305347597}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'element_air'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.300344714}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'tarot_sun'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.213743318}
MATCH (p:Profile {profile_id: 'profile-003-celestial-dreamer'}), (t:Term {id: 'sign_pisces'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.20270714}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'mid_century_modernist'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 0.7}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'organic_modern'}) MERGE (p)-[sd:SEEDS]->(t) SET sd += {weight: 1.0}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'art_nouveau'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 1, score: 0.317751157}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'brutalist'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 2, score: 0.16701993}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'biker'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 3, score: 0.163042694}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'art_deco'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 4, score: 0.110461255}
MATCH (p:Profile {profile_id: 'profile-004-scandinavian-modernist'}), (t:Term {id: 'victorian'}) MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {method: 'latent-blend', prior_input_hash: 'a462d4d3d190cfba066ef32c47217597fb690b23109faf58fad7253106f391e3', rank: 5, score: 0.092817138}
