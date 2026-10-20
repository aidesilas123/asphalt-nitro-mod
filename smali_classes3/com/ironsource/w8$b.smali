###### Class com.ironsource.w8.b (com.ironsource.w8$b)
.class Lcom/ironsource/w8$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/w8;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/w8;


# direct methods
.method constructor <init>(Lcom/ironsource/w8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->g(Lcom/ironsource/w8;)Lcom/ironsource/lifecycle/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v1}, Lcom/ironsource/w8;->e(Lcom/ironsource/w8;)Lcom/ironsource/l8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/l8;)V

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/oc;->b()V

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->h(Lcom/ironsource/w8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
