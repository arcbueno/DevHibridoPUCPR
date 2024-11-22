import 'package:flutter/material.dart';

/// Me gere uma appbar em flutter única.
/// A appbar será utilizada para o aplicativo de comando de uma nave espacial.
/// Ela deve ter sombras, botões em alto relevo com sombras que se
/// misturam ao fundo, background offwhite e fontes de texto em
/// estilo futuristico
class SpaceAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget? leading;

  const SpaceAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          letterSpacing: 1.5,
          fontFamily: 'Orbitron', // Fonte futurística
        ),
      ),
      backgroundColor: Colors.grey[200], // Background offwhite
      elevation: 20, // Adiciona sombra
      shadowColor: Colors.blueAccent.withOpacity(0.5), // Cor da sombra
      actions: actions.isNotEmpty ? actions : _defaultActions(),
      leading: leading,
    );
  }

  List<Widget> _defaultActions() {
    return [
      _buildElevatedIconButton(Icons.search, () {
        // Ação ao pressionar o botão de pesquisa
      }),
      _buildElevatedIconButton(Icons.notifications, () {
        // Ação ao pressionar o botão de notificações
      }),
      PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: Colors.black),
        onSelected: (String result) {
          // Ação ao selecionar um item do menu
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Profile',
            child: Text('Profile'),
          ),
          const PopupMenuItem<String>(
            value: 'Settings',
            child: Text('Settings'),
          ),
          const PopupMenuItem<String>(
            value: 'Logout',
            child: Text('Logout'),
          ),
        ],
      ),
    ];
  }

  Widget _buildElevatedIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.5),
            offset: const Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
