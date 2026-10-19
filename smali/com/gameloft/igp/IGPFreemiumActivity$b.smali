###### Class com.gameloft.igp.IGPFreemiumActivity.b (com.gameloft.igp.IGPFreemiumActivity$b)
.class Lcom/gameloft/igp/IGPFreemiumActivity$b;
.super Ljava/lang/Thread;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    :goto_a
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
