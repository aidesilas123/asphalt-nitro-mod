###### Class com.gameloft.glads.MoatSDK.b (com.gameloft.glads.MoatSDK$b)
.class Lcom/gameloft/glads/MoatSDK$b;
.super Ljava/lang/Object;
.source "MoatSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/MoatSDK;->StopTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/MoatSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/MoatSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/MoatSDK$b;->a:Lcom/gameloft/glads/MoatSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$b;->a:Lcom/gameloft/glads/MoatSDK;

    invoke-static {v0}, Lcom/gameloft/glads/MoatSDK;->access$000(Lcom/gameloft/glads/MoatSDK;)V

    return-void
.end method
