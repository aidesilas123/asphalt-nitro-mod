###### Class com.gameloft.glads.OmSDK.a (com.gameloft.glads.OmSDK$a)
.class Lcom/gameloft/glads/OmSDK$a;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->StartAnalytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iab/omid/library/gameloft/Omid;->activateWithOmidApiVersion(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/glads/OmSDK;->activated:Z

    if-eqz v0, :cond_18

    const-string v0, "Gameloft"

    invoke-static {}, Lcom/gameloft/glads/OmSDK;->NativeGetPartnerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iab/omid/library/gameloft/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/gameloft/adsession/Partner;

    move-result-object v0

    sput-object v0, Lcom/gameloft/glads/OmSDK;->partner:Lcom/iab/omid/library/gameloft/adsession/Partner;

    :cond_18
    sget-boolean v0, Lcom/gameloft/glads/OmSDK;->activated:Z

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->NativeOnSDKActivated(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
