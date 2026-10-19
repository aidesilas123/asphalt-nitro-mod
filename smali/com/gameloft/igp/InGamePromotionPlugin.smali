###### Class com.gameloft.igp.InGamePromotionPlugin (com.gameloft.igp.InGamePromotionPlugin)
.class public Lcom/gameloft/igp/InGamePromotionPlugin;
.super Ljava/lang/Object;
.source "InGamePromotionPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/igp/InGamePromotionPlugin$a;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/gameloft/igp/InGamePromotionPlugin$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchIGP(IZ)Z
    .registers 5

    sget-object v0, Lcom/gameloft/igp/InGamePromotionPlugin;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_9

    const/4 p0, 0x0

    :cond_9
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/igp/InGamePromotionPlugin;->a:Landroid/app/Activity;

    const-class v2, Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isPortrait"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p0, Lcom/gameloft/igp/InGamePromotionPlugin;->a:Landroid/app/Activity;

    const/16 p1, 0x190

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static retrieveItems(ILjava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/16 p2, 0x190

    if-ne p1, p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/igp/InGamePromotionPlugin;->a:Landroid/app/Activity;

    new-instance p1, Lcom/gameloft/igp/InGamePromotionPlugin$a;

    invoke-direct {p1, p0}, Lcom/gameloft/igp/InGamePromotionPlugin$a;-><init>(Lcom/gameloft/igp/InGamePromotionPlugin;)V

    sput-object p1, Lcom/gameloft/igp/InGamePromotionPlugin;->b:Lcom/gameloft/igp/InGamePromotionPlugin$a;

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 1

    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method

###### Class com.gameloft.igp.InGamePromotionPlugin.a (com.gameloft.igp.InGamePromotionPlugin$a)
.class public Lcom/gameloft/igp/InGamePromotionPlugin$a;
.super Ljava/lang/Object;
.source "InGamePromotionPlugin.java"

# interfaces
.implements Lcom/gameloft/igp/IGPFreemiumActivity$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/InGamePromotionPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/gameloft/igp/InGamePromotionPlugin;


# direct methods
.method public constructor <init>(Lcom/gameloft/igp/InGamePromotionPlugin;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->d:Lcom/gameloft/igp/InGamePromotionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->b:I

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
