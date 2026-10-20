###### Class com.ironsource.sdk.controller.r.b (com.ironsource.sdk.controller.r$b)
.class Lcom/ironsource/sdk/controller/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/r;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/r$b;->a:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/r$b;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/r;->d(Landroid/media/AudioManager;)V

    return-void
.end method
