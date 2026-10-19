###### Class com.ironsource.eb.b (com.ironsource.eb$b)
.class Lcom/ironsource/eb$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/eb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/eb;


# direct methods
.method constructor <init>(Lcom/ironsource/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/eb$b;->a:Lcom/ironsource/eb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/eb$b;->a:Lcom/ironsource/eb;

    invoke-static {v0}, Lcom/ironsource/eb;->a(Lcom/ironsource/eb;)Lcom/ironsource/fb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/fb;->a()V

    return-void
.end method
