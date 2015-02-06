(setq uniview-send-history '())
(defun uniview-send (message &optional host port terminate)
  (interactive (list (read-string "message: " nil 'uniview-send-history)))
  (let ((host (if host host "localhost"))
        (port (if port port 22000)))
    (let ((c (open-network-stream "uniview_connection" nil host port)))
      (unwind-protect
          (process-send-string c (concat message "\r\n"))
        (delete-process c)))))

(defun uniview-reload-gas-shader ()
  (interactive)
  (uniview-send "galaxy.reloadGasShader"))

(defun uniview-reload-fbo-shader ()
  (interactive)
  (uniview-send "galaxy.reloadFBOShader"))

(defun uniview-reload-star-shader ()
  (interactive)
  (uniview-send "galaxy.reloadStarShader"))

(defun uniview-reload-uses-shaders ()
  (interactive)
  (uniview-send "system.reloadallshaders"))

(defun uniview-reload-neurodome ()
  (interactive)
  (uniview-send "neurodome_ccAnterior.reload")
  (uniview-send "neurodome_ccCentral.reload")
  (uniview-send "neurodome_ccMidPosterior.reload")
  (uniview-send "neurodome_ccMidAnterior.reload")
  (uniview-send "neurodome_ccPosterior.reload")
  (uniview-send "neurodome_LeftCerebellum.reload")
  (uniview-send "neurodome_LeftCerebral.reload")
  (uniview-send "neurodome_opticChiasm.reload")
  (uniview-send "neurodome_RightCerebral.reload")
  (uniview-send "neurodome_RightCerebellum.reload")
  (uniview-send "neurodome_Brain-Stem.reload")
  (uniview-send "neurodome_Ctx-Lh-Bankssts.reload")
  (uniview-send "neurodome_Ctx-Lh-Caudalanteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Lh-Caudalmiddlefrontal.reload")
  (uniview-send "neurodome_Ctx-Lh-Cuneus.reload")
  (uniview-send "neurodome_Ctx-Lh-Entorhinal.reload")
  (uniview-send "neurodome_Ctx-Lh-Frontalpole.reload")
  (uniview-send "neurodome_Ctx-Lh-Fusiform.reload")
  (uniview-send "neurodome_Ctx-Lh-Inferiorparietal.reload")
  (uniview-send "neurodome_Ctx-Lh-Inferiortemporal.reload")
  (uniview-send "neurodome_Ctx-Lh-Insula.reload")
  (uniview-send "neurodome_Ctx-Lh-Isthmuscingulate.reload")
  (uniview-send "neurodome_Ctx-Lh-Lateraloccipital.reload")
  (uniview-send "neurodome_Ctx-Lh-Lateralorbitofrontal.reload")
  (uniview-send "neurodome_Ctx-Lh-Lingual.reload")
  (uniview-send "neurodome_Ctx-Lh-Medialorbitofrontal.reload")
  (uniview-send "neurodome_Ctx-Lh-Middletemporal.reload")
  (uniview-send "neurodome_Ctx-Lh-Paracentral.reload")
  (uniview-send "neurodome_Ctx-Lh-Parahippocampal.reload")
  (uniview-send "neurodome_Ctx-Lh-Parsopercularis.reload")
  (uniview-send "neurodome_Ctx-Lh-Parsorbitalis.reload")
  (uniview-send "neurodome_Ctx-Lh-Parstriangularis.reload")
  (uniview-send "neurodome_Ctx-Lh-Pericalcarine.reload")
  (uniview-send "neurodome_Ctx-Lh-Postcentral.reload")
  (uniview-send "neurodome_Ctx-Lh-Posteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Lh-Precentral.reload")
  (uniview-send "neurodome_Ctx-Lh-Precuneus.reload")
  (uniview-send "neurodome_Ctx-Lh-Rostralanteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Lh-Rostralmiddlefrontal.reload")
  (uniview-send "neurodome_Ctx-Lh-Superiorfrontal.reload")
  (uniview-send "neurodome_Ctx-Lh-Superiorparietal.reload")
  (uniview-send "neurodome_Ctx-Lh-Superiortemporal.reload")
  (uniview-send "neurodome_Ctx-Lh-Supramarginal.reload")
  (uniview-send "neurodome_Ctx-Lh-Temporalpole.reload")
  (uniview-send "neurodome_Ctx-Lh-Transversetemporal.reload")
  (uniview-send "neurodome_Ctx-Rh-Bankssts.reload")
  (uniview-send "neurodome_Ctx-Rh-Caudalanteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Rh-Caudalmiddlefrontal.reload")
  (uniview-send "neurodome_Ctx-Rh-Cuneus.reload")
  (uniview-send "neurodome_Ctx-Rh-Entorhinal.reload")
  (uniview-send "neurodome_Ctx-Rh-Frontalpole.reload")
  (uniview-send "neurodome_Ctx-Rh-Fusiform.reload")
  (uniview-send "neurodome_Ctx-Rh-Inferiorparietal.reload")
  (uniview-send "neurodome_Ctx-Rh-Inferiortemporal.reload")
  (uniview-send "neurodome_Ctx-Rh-Insula.reload")
  (uniview-send "neurodome_Ctx-Rh-Isthmuscingulate.reload")
  (uniview-send "neurodome_Ctx-Rh-Lateraloccipital.reload")
  (uniview-send "neurodome_Ctx-Rh-Lateralorbitofrontal.reload")
  (uniview-send "neurodome_Ctx-Rh-Lingual.reload")
  (uniview-send "neurodome_Ctx-Rh-Medialorbitofrontal.reload")
  (uniview-send "neurodome_Ctx-Rh-Middletemporal.reload")
  (uniview-send "neurodome_Ctx-Rh-Paracentral.reload")
  (uniview-send "neurodome_Ctx-Rh-Parahippocampal.reload")
  (uniview-send "neurodome_Ctx-Rh-Parsopercularis.reload")
  (uniview-send "neurodome_Ctx-Rh-Parsorbitalis.reload")
  (uniview-send "neurodome_Ctx-Rh-Parstriangularis.reload")
  (uniview-send "neurodome_Ctx-Rh-Pericalcarine.reload")
  (uniview-send "neurodome_Ctx-Rh-Postcentral.reload")
  (uniview-send "neurodome_Ctx-Rh-Posteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Rh-Precentral.reload")
  (uniview-send "neurodome_Ctx-Rh-Precuneus.reload")
  (uniview-send "neurodome_Ctx-Rh-Rostralanteriorcingulate.reload")
  (uniview-send "neurodome_Ctx-Rh-Rostralmiddlefrontal.reload")
  (uniview-send "neurodome_Ctx-Rh-Superiorfrontal.reload")
  (uniview-send "neurodome_Ctx-Rh-Superiorparietal.reload")
  (uniview-send "neurodome_Ctx-Rh-Superiortemporal.reload")
  (uniview-send "neurodome_Ctx-Rh-Supramarginal.reload")
  (uniview-send "neurodome_Ctx-Rh-Temporalpole.reload")
  (uniview-send "neurodome_Ctx-Rh-Transversetemporal.reload")
  (uniview-send "neurodome_Left-Accumbens-area.reload")
  (uniview-send "neurodome_Left-Amygdala.reload")
  (uniview-send "neurodome_Left-Caudate.reload")
  (uniview-send "neurodome_Left-Cerebellum-Cortex.reload")
  (uniview-send "neurodome_Left-Hippocampus.reload")
  (uniview-send "neurodome_Left-Pallidum.reload")
  (uniview-send "neurodome_Left-Putamen.reload")
  (uniview-send "neurodome_Left-Thalamus-Proper.reload")
  (uniview-send "neurodome_Left-VentralDC.reload")
  (uniview-send "neurodome_Right-Accumbens-area.reload")
  (uniview-send "neurodome_Right-Amygdala.reload")
  (uniview-send "neurodome_Right-Caudate.reload")
  (uniview-send "neurodome_Right-Cerebellum-Cortex.reload")
  (uniview-send "neurodome_Right-Hippocampus.reload")
  (uniview-send "neurodome_Right-Pallidum.reload")
  (uniview-send "neurodome_Right-Putamen.reload")
  (uniview-send "neurodome_Right-Thalamus-Proper.reload")
  (uniview-send "neurodome_Right-VentralDC.reload"))

(defun uniview-reload-shaders ()
  (interactive)
  (uniview-reload-uses-shaders)
  ;; (uniview-reload-gas-shader)
  ;; (uniview-reload-fbo-shader)
  ;; (uniview-reload-star-shader)
  ;;(uniview-send "ISS.reload")
  ;; (uniview-send "Magneto.reload")
  ;; (uniview-send "BowShock.reload")
  ;; (uniview-send "Cassini.reload")
  ;; (uniview-send "iso50k.reload")
  ;; (uniview-send "iso20k.reload")
  ;; (uniview-send "iso10k.reload")
  ;;(uniview-send "SunSurface.reload")
  ;;(uniview-send "rainbow.reload")
  ;; (uniview-send "hubble.reload")
  ;; (uniview-send "earthquakes.reload")
  ;; (uniview-send "Earth_Aurora_Borealis.reload")
  ;; (uniview-send "Earth_Aurora_Australis.reload")
  ;;(uniview-send "testearth.reload")
  ;;(uniview-send "asteroids_hypothetical")
  ;;(uniview-send "curiosity.reload")
  ;; (uniview-send "galeCrater.reload")
  ;;(uniview-send "curiosityPanorama.reload")
  ;;(uniview-send "atlas.reload")
  ;;(uniview-send "pan.reload")
  ;; (uniview-send "SaturnRings.reload")
  ;;(uniview-send "SaturnRingDetails.reload")
  ;; (uniview-send "Saturn_Northern_Aurora.reload")
  ;; (uniview-send "Saturn_Southern_Aurora.reload")
  ;; (uniview-send "Jupiter_Northern_Aurora.reload")
  ;; (uniview-send "Jupiter_Southern_Aurora.reload")
  ;; (uniview-send "Uranus_Northern_Aurora.reload")
  ;; (uniview-send "Uranus_Southern_Aurora.reload")
  ;;(uniview-send "itokawa.reload")
  ;;(uniview-send "advancedVolumeView.reload")
  ;;(uniview-send "particles.reload")
  ;;(uniview-send "protodisk.reload")
  ;;(uniview-send "m31_image.reload")
  ;; (uniview-send "B1919_21_surface.reload")
  ;; (uniview-send "B1919_21_maglines.reload")
  ;; (uniview-send "B1919_21_maglines_particles.reload")
  ;; (uniview-send "B1919_21_fadesphere.reload")
  ;; (uniview-send "B1919_21_jets.reload")
  ;; (uniview-send "particles.reload")
  ;; (uniview-send "hh34_fadesphere.reload")
  ;; (uniview-send "hh34_disk.reload")
  ;; (uniview-send "hh34_star.reload")
  ;; (uniview-send "hh34_jets.reload")
  ;;(uniview-send "ProceduralStar.reload")
  ;;(uniview-send "brain.reload")
  ;; (uniview-send "specular_test.reload")
  ;; (uniview-send "specular_test2.reload")
  ;; (uniview-send "face_left.reload")
  ;;(uniview-send "snr_0509-67_5.reload")
  ;; (uniview-send "oh231.reload")
  ;;(uniview-send "asteroids.reload")
  ;;(uniview-send "gaiastars.reload")
  ;;(uniview-send "cradle_comet.reload")
  ;; (uniview-send "lutetiaobj.reload")
  ;; (uniview-send "GlialCells.reload")
  ;;(uniview-send "Mercury_Magneto.reload")
  ;;(uniview-send "neurodomePanorama.reload")
  (uniview-reload-neurodome)
  ;;(uniview-send "neurodome_CT_1.reload")
  ;;(uniview-send "NGC6302.reload")
  ;; (uniview-send "neurodome_glassbrain_left.reload")
  ;; (uniview-send "neurodome_glassbrain_right.reload")
  (uniview-send "neurodome_dti.reload")
  ;;(uniview-send "neurodome_fadesphere.reload")
  )

(global-set-key (kbd "C-c u s") 'uniview-send)
(global-set-key (kbd "C-c u r") 'uniview-reload-shaders)

(defun uniview-list-node (host)
  (interactive "Mwhich host? ")
  (let ((hostport (concat host "#14001")))
    (ange-ftp-set-passwd hostport "sciss" "SCISS1234")
    (find-file (concat "/ftp:sciss@" hostport ":/"))))

(provide 'uniview-connection)
