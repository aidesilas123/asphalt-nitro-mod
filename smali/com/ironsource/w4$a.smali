###### Class com.ironsource.w4.a (com.ironsource.w4$a)
.class Lcom/ironsource/w4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/w4;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/w4;


# direct methods
.method constructor <init>(Lcom/ironsource/w4;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/w4$a;->b:Lcom/ironsource/w4;

    iput-object p2, p0, Lcom/ironsource/w4$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/w4$a;->b:Lcom/ironsource/w4;

    iget-object v1, p0, Lcom/ironsource/w4$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/w4;->d(Lcom/ironsource/w4;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    iget-object v0, p0, Lcom/ironsource/w4$a;->b:Lcom/ironsource/w4;

    invoke-static {v0}, Lcom/ironsource/w4;->b(Lcom/ironsource/w4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
