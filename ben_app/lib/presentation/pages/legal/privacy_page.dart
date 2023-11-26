import 'package:ben_app/core/config/env.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  static const String routeName = 'privacy';

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
Chez BenApp, accessible depuis ${getIt<Env>().env.website} ou sur l'application mobile BenApp, l'une de nos principales priorités est la confidentialité de nos visiteurs. Ce document de politique de confidentialité contient des types d'informations collectées et enregistrées par BenApp et la manière dont nous les utilisons.

Si vous avez des questions supplémentaires ou avez besoin de plus d'informations sur notre politique de confidentialité, n'hésitez pas à nous contacter.

Cette politique de confidentialité s'applique uniquement à nos activités en ligne et est valable pour les visiteurs de notre site Web en ce qui concerne les informations qu'ils ont partagées et/ou collectées dans BenApp. Cette politique ne s'applique pas aux informations collectées hors ligne ou via des canaux autres que ce site Web.

Consentement
En utilisant notre site Web, vous consentez par la présente à notre politique de confidentialité et acceptez ses conditions.

Informations que nous collectons
Les informations personnelles que vous êtes invité à fournir, et les raisons pour lesquelles il vous est demandé de les fournir, vous seront clairement indiquées au moment où nous vous demanderons de fournir vos informations personnelles.

Si vous nous contactez directement, nous pouvons recevoir des informations supplémentaires vous concernant, telles que votre nom, votre adresse e-mail, votre numéro de téléphone, le contenu du message et/ou des pièces jointes que vous pouvez nous envoyer, ainsi que toute autre information que vous pouvez choisir de fournir.

Lorsque vous créez un compte, nous pouvons vous demander vos coordonnées, y compris des éléments tels que votre nom, le nom de votre entreprise, votre adresse, votre adresse e-mail et votre numéro de téléphone.

Comment nous utilisons vos informations
Nous utilisons les informations que nous collectons de diverses manières, notamment pour :
Fournir, exploiter et entretenir notre site Web
Améliorer, personnaliser et développer notre site Web
Comprendre et analyser la façon dont vous utilisez notre site Web
Développer de nouveaux produits, services, fonctionnalités et fonctionnalités
Communiquer avec vous, soit directement, soit par l'intermédiaire de l'un de nos partenaires, notamment pour le service client, pour vous fournir des mises à jour et autres informations relatives au site Internet, ainsi qu'à des fins de marketing et de promotion.
Vous envoyer des e-mails
Détecter et prévenir la fraude
Fichiers journaux
BenApp suit une procédure standard d'utilisation des fichiers journaux. Ces fichiers enregistrent les visiteurs lorsqu'ils visitent des sites Web. Toutes les sociétés d'hébergement le font ainsi qu'une partie des analyses des services d'hébergement. Les informations collectées par les fichiers journaux incluent les adresses de protocole Internet (IP), le type de navigateur, le fournisseur d'accès Internet (FAI), la date et l'heure, les pages de référence/de sortie et éventuellement le nombre de clics. Ceux-ci ne sont liés à aucune information personnellement identifiable. Le but de ces informations est d'analyser les tendances, d'administrer le site, de suivre les mouvements des utilisateurs sur le site Web et de recueillir des informations démographiques.

Cookies et balises Web
Comme tout autre site Web, BenApp utilise des « cookies ». Ces cookies sont utilisés pour stocker des informations, notamment les préférences des visiteurs et les pages du site Web auxquelles le visiteur a accédé ou visité. Les informations sont utilisées pour optimiser l'expérience des utilisateurs en personnalisant le contenu de notre page Web en fonction du type de navigateur des visiteurs et/ou d'autres informations.

Pour des informations plus générales sur les cookies, veuillez lire l'article « Cookies ».

Politiques de confidentialité des partenaires publicitaires
Vous pouvez consulter cette liste pour trouver la politique de confidentialité de chacun des partenaires publicitaires de BenApp.

Les serveurs publicitaires ou réseaux publicitaires tiers utilisent des technologies telles que les cookies, JavaScript ou les balises Web qui sont utilisées dans leurs publicités respectives et les liens qui apparaissent sur BenApp, qui sont envoyés directement au navigateur des utilisateurs. Ils reçoivent automatiquement votre adresse IP lorsque cela se produit. Ces technologies sont utilisées pour mesurer l'efficacité de leurs campagnes publicitaires et/ou pour personnaliser le contenu publicitaire que vous voyez sur les sites Web que vous visitez.

Notez que BenApp n'a aucun accès ni contrôle sur ces cookies qui sont utilisés par des annonceurs tiers.
Politiques de confidentialité des tiers
La politique de confidentialité de BenApp ne s'applique pas aux autres annonceurs ou sites Web. Ainsi, nous vous conseillons de consulter les politiques de confidentialité respectives de ces serveurs publicitaires tiers pour des informations plus détaillées. Il peut inclure leurs pratiques et instructions sur la manière de se désinscrire de certaines options.

Vous pouvez choisir de désactiver les cookies via les options de votre navigateur individuel. Pour connaître des informations plus détaillées sur la gestion des cookies avec des navigateurs Web spécifiques, elles peuvent être trouvées sur les sites Web respectifs des navigateurs.

Droits de confidentialité CCPA (Ne pas vendre mes informations personnelles)
En vertu du CCPA, entre autres droits, les consommateurs californiens ont le droit de :

Demander à une entreprise qui collecte les données personnelles d'un consommateur de divulguer les catégories et les éléments spécifiques de données personnelles qu'une entreprise a collectées sur les consommateurs.

Demander à une entreprise de supprimer toutes les données personnelles sur le consommateur qu'elle a collectées.

Demander qu'une entreprise qui vend les données personnelles d'un consommateur ne vende pas les données personnelles du consommateur.

Si vous faites une demande, nous avons un mois pour vous répondre. Si vous souhaitez exercer l’un de ces droits, veuillez nous contacter.

Droits de protection des données RGPD
Nous souhaitons nous assurer que vous connaissez pleinement tous vos droits en matière de protection des données. Chaque utilisateur a droit aux éléments suivants :

Le droit d’accès – Vous avez le droit de demander des copies de vos données personnelles. Nous pouvons vous facturer une somme modique pour ce service.

Le droit de rectification – Vous avez le droit de demander que nous corrigions toute information que vous jugez inexacte. Vous avez également le droit de nous demander de compléter les informations que vous jugez incomplètes.

Le droit à l’effacement – ​​Vous avez le droit de demander que nous supprimions vos données personnelles, sous certaines conditions.

Le droit de limiter le traitement – ​​Vous avez le droit de demander que nous limitions le traitement de vos données personnelles, sous certaines conditions.

Le droit de vous opposer au traitement – ​​Vous avez le droit de vous opposer au traitement de vos données personnelles, sous certaines conditions.

Le droit à la portabilité des données – Vous avez le droit de demander que nous transférions les données que nous avons collectées à une autre organisation, ou directement à vous, sous certaines conditions.

Si vous faites une demande, nous avons un mois pour vous répondre. Si vous souhaitez exercer l’un de ces droits, veuillez nous contacter.

Informations pour les enfants
Une autre partie de notre priorité consiste à ajouter une protection aux enfants lorsqu’ils utilisent Internet. Nous encourageons les parents et tuteurs à observer, participer et/ou surveiller et guider leur activité en ligne.

BenApp ne collecte sciemment aucune information personnelle identifiable auprès d'enfants de moins de 13 ans. Si vous pensez que votre enfant a fourni ce type d'informations sur notre site Web, nous vous encourageons fortement à nous contacter immédiatement et nous ferons de notre mieux pour supprimer rapidement ces informations de nos dossiers.'''),
          ),
        ),
      ),
    );
  }
}
