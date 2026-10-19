###### Class com.gameloft.didomiwrapper.DidomiWrapper.c (com.gameloft.didomiwrapper.DidomiWrapper$c)
.class Lcom/gameloft/didomiwrapper/DidomiWrapper$c;
.super Ljava/lang/Object;
.source "DidomiWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/didomiwrapper/DidomiWrapper;->ShowNotice()V
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
    .registers 3

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/didomiwrapper/Utils;->GetActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Didomi;->showNotice(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
