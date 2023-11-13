import 'package:ben_app/core/config/env.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';

class CGUPage extends StatelessWidget {
  const CGUPage({super.key});

  static const String routeName = 'cgu';

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      withDrawer: false,
      appBar: const MainAppBar(
        title: 'Politique de confidentialité',
        hasLogout: false,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
            child: Text('''
Le présent document a pour objet de définir les modalités et conditions dans lesquelles d’une part,  BenApp, ci-après dénommé l’EDITEUR, met à la disposition de ses utilisateurs le site, les services disponibles sur le site l'application mobile et d’autre part, la manière par laquelle l’utilisateur accède au site et à l'application mobile et utilise ses services.

Toute connexion au site est subordonnée au respect des présentes conditions.

Pour l’utilisateur, le simple accès au site de l’EDITEUR à l’adresse URL suivante https://${getIt<Env>().env.website} ou à l'application mobile disponible sur le store officiel implique l’acceptation de l’ensemble des conditions décrites ci-après.


Propriété intellectuelle

Tous les éléments de ce site, y compris les documents téléchargeables, sont libres de droit. A l’exception de l’iconographie, la reproduction des pages de ce site est autorisée à la condition d’y mentionner la source. Elles ne peuvent être utilisées à des fins commerciales et publicitaires.

Liens hypertextes

Le site et l'application mobile BenApp peut contenir des liens hypertextes vers d’autres sites présents sur le réseau Internet. Les liens vers ces autres ressources vous font quitter le site ou l'application mobile.

Il est possible de créer un lien vers la page de présentation de ce site sans autorisation expresse de l’EDITEUR. Aucune autorisation ou demande d’information préalable ne peut être exigée par l’éditeur à l’égard d’un site qui souhaite établir un lien vers le site de l’éditeur. Il convient toutefois d’afficher ce site dans une nouvelle fenêtre du navigateur. Cependant, l’EDITEUR se réserve le droit de demander la suppression d’un lien qu’il estime non conforme à l’objet du site ou de l'application BenApp


Responsabilité de l’éditeur

Les informations et/ou documents figurant sur ce site et/ou accessibles par ce site proviennent de sources considérées comme étant fiables.

Toutefois, ces informations et/ou documents sont susceptibles de contenir des inexactitudes techniques et des erreurs typographiques.

L’EDITEUR se réserve le droit de les corriger, dès que ces erreurs sont portées à sa connaissance.

Il est fortement recommandé de vérifier l’exactitude et la pertinence des informations et/ou documents mis à disposition sur ce site.

Les informations et/ou documents disponibles sur ce site sont susceptibles d’être modifiés à tout moment, et peuvent avoir fait l’objet de mises à jour. En particulier, ils peuvent avoir fait l’objet d’une mise à jour entre le moment de leur téléchargement et celui où l’utilisateur en prend connaissance.

L’utilisation des informations et/ou documents disponibles sur ce site se fait sous l’entière et seule responsabilité de l’utilisateur, qui assume la totalité des conséquences pouvant en découler, sans que l’EDITEUR puisse être recherché à ce titre, et sans recours contre ce dernier.

L’EDITEUR ne pourra en aucun cas être tenu responsable de tout dommage de quelque nature qu’il soit résultant de l’interprétation ou de l’utilisation des informations et/ou documents disponibles sur ce site.

Accès au site

L’éditeur s’efforce de permettre l’accès au site 24 heures sur 24, 7 jours sur 7, sauf en cas de force majeure ou d’un événement hors du contrôle de l’EDITEUR, et sous réserve des éventuelles pannes et interventions de maintenance nécessaires au bon fonctionnement du site et des services.

Par conséquent, l’EDITEUR ne peut garantir une disponibilité du site et/ou des services, une fiabilité des transmissions et des performances en terme de temps de réponse ou de qualité. Il n’est prévu aucune assistance technique vis à vis de l’utilisateur que ce soit par des moyens électronique ou téléphonique.

La responsabilité de l’éditeur ne saurait être engagée en cas d’impossibilité d’accès à ce site et/ou d’utilisation des services.

Par ailleurs, l’EDITEUR peut être amené à interrompre le site ou une partie des services, à tout moment sans préavis, le tout sans droit à indemnités. L’utilisateur reconnaît et accepte que l’EDITEUR ne soit pas responsable des interruptions, et des conséquences qui peuvent en découler pour l’utilisateur ou tout tiers.


Modification des conditions d’utilisation

L’EDITEUR se réserve la possibilité de modifier, à tout moment et sans préavis, les présentes conditions d’utilisation afin de les adapter aux évolutions du site et/ou de son exploitation.


Règles d'usage d'Internet

L’utilisateur déclare accepter les caractéristiques et les limites d’Internet, et notamment reconnaît que :

L’EDITEUR n’assume aucune responsabilité sur les services accessibles par Internet et n’exerce aucun contrôle de quelque forme que ce soit sur la nature et les caractéristiques des données qui pourraient transiter par l’intermédiaire de son centre serveur.

L’utilisateur reconnaît que les données circulant sur Internet ne sont pas protégées notamment contre les détournements éventuels. La présence du logo BenApp institue une présomption simple de validité. La communication de toute information jugée par l’utilisateur de nature sensible ou confidentielle se fait à ses risques et périls.

L’utilisateur reconnaît que les données circulant sur Internet peuvent être réglementées en termes d’usage ou être protégées par un droit de propriété.

L’utilisateur est seul responsable de l’usage des données qu’il consulte, interroge et transfère sur Internet.

L’utilisateur reconnaît que l’EDITEUR ne dispose d’aucun moyen de contrôle sur le contenu des services accessibles sur Internet


Droit applicable

Tant le présent site que les modalités et conditions de son utilisation sont régis par le droit français, quel que soit le lieu d’utilisation. En cas de contestation éventuelle, et après l’échec de toute tentative de recherche d’une solution amiable, les tribunaux français seront seuls compétents pour connaître de ce litige.

Pour toute question relative aux présentes conditions d’utilisation du site, vous pouvez nous écrire à l’adresse suivante : grrravitybusiness@gmail.com
'''),
          ),
        ),
      ),
    );
  }
}
