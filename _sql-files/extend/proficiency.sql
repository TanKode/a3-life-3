-- http://www.altisliferpg.com/topic/8095-howto-papabears-persistent-proficiency-system/

ALTER TABLE `arma3life`.`players`
    ADD COLUMN `cop_prof` TEXT NULL DEFAULT NULL AFTER `blacklist`,
    ADD COLUMN `civ_prof` TEXT NULL DEFAULT NULL AFTER `cop_prof`,
    ADD COLUMN `med_prof` TEXT NULL DEFAULT NULL AFTER `civ_prof`;