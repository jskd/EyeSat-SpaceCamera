/**
 *  @file       EscapeSequences.h
 *  @brief      ANSI escape codes (En-tête)
 *  @author     Jérôme Skoda <jerome.skoda@hotmail.fr>
 *  @version    1.3
 *  @date       11/05/2015 - 15/05/2015
 */

#ifndef _ESCAPE_SEQUENCES_H_
#define _ESCAPE_SEQUENCES_H_

/**
 *  @class      EscapeSequences
 *  @brief      Gestion des sorties ANSI escape codes
 */
/* static */class EscapeSequences {

	public:

		/**
		 *  @brief      Déplacement du curseur
		 *  @param[in]  x: Position horizontal de 0 (à gauche) à 79 (à droite)
		 *  @param[in]  y: Position vertical de 0 (en haut ) à 23 (en bas)
		 */
		static void moveCursor(unsigned char x, unsigned char y);

		/// @brief      Efface tous le contenu de l'écran
		static void clearScreen();

		/**
		 *  @brief      Change la couleur de fond
		 *  @param[in]  color: Couleur (voir XTRUITEScolorPalette)
		 *  @param[in]  force: Force le changement de couleur
		 */
		static void setBackground(unsigned char color, bool force = false);

		/**
		 *  @brief      Change la couleur des caractéres
		 *  @param[in]  color: Couleur (voir XTRUITEScolorPalette)
		 *  @param[in]  force: Force le changement de couleur
		 */
		static void setForeground(unsigned char color, bool force = false);

		/// @brief  Inverse la couleur de fond et des caractéres
		static void reversesColors();

		/// @brief  Efface la ligne courrante
		static void erasesEntireCurrentLine();

		/**
		 *  @brief      Déplacement de la position d'accueil du curseur
		 *  @param[in]  x: Position horizontal de 0 (à gauche) à 79 (à droite)
		 *  @param[in]  y: Position vertical de 0 (en haut ) à 23 (en bas)
		 */
		static void setHomePosition(unsigned char x, unsigned char y);

		/// @brief Déplace le curseur à la position d'accueil
		static void moveCursorHome();

		/// @brief Réinitialise tous les attribut (couleur, position, scrolling)
		static void resetAttributes();

		/**
		 *  @brief      Définie la zone de scrolling
		 *  @param[in]  startRow: Ligne de début de 0 (en haut ) à 23 (en bas)
		 *  @param[in]  endRow: Ligne de fin de 0 (en haut ) à 23 (en bas)
		 */
		static void scrollScreen(unsigned char startRow, unsigned char endRow);

		/// @brief      Postion horizontal d'accueil du curseur
		/// @details    Valeur de 0 (à gauche) à 79 (à droite)
		static unsigned char xHome;

		/// @brief      Postion vertical d'accueil du curseur
		/// @details    Valeur de 0 (en haut ) à 23 (en bas)
		static unsigned char yHome;

		/// @brief  Couleur de fond actuelle  (voir XTRUITEScolorPalette)
		static unsigned char currentBackground;

		/// @brief  Couleur des caractéres actuelle  (voir XTRUITEScolorPalette)
		static unsigned char currentForeground;

};

#endif /* _QB50_ESCAPE_SEQUENCES_H_ */

/*EoF*/
