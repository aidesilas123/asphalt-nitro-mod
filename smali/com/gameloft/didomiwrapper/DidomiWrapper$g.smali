###### Class com.gameloft.didomiwrapper.DidomiWrapper.g (com.gameloft.didomiwrapper.DidomiWrapper$g)
.class Lcom/gameloft/didomiwrapper/DidomiWrapper$g;
.super Ljava/lang/Object;
.source "DidomiWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/didomiwrapper/DidomiWrapper;->ShowVendors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/didomiwrapper/Utils;->GetActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const-string v2, "vendors"

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/Didomi;->showPreferences(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
