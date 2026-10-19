###### Class com.ironsource.x8.a (com.ironsource.x8$a)
.class Lcom/ironsource/x8$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x8;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/x8;


# direct methods
.method constructor <init>(Lcom/ironsource/x8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x8$a;->a:Lcom/ironsource/x8;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x8$a;->a:Lcom/ironsource/x8;

    invoke-static {v0}, Lcom/ironsource/x8;->a(Lcom/ironsource/x8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
