###### Class com.gameloft.glads.OmSDK.d (com.gameloft.glads.OmSDK$d)
.class Lcom/gameloft/glads/OmSDK$d;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->StopTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/OmSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/OmSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$d;->a:Lcom/gameloft/glads/OmSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$d;->a:Lcom/gameloft/glads/OmSDK;

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->access$000(Lcom/gameloft/glads/OmSDK;)V

    return-void
.end method
