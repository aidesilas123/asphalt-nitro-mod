###### Class com.ironsource.z.b (com.ironsource.z$b)
.class Lcom/ironsource/z$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/z;->h(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/z;


# direct methods
.method constructor <init>(Lcom/ironsource/z;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/z$b;->a:Lcom/ironsource/z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/z$b;->a:Lcom/ironsource/z;

    invoke-static {v0}, Lcom/ironsource/z;->a(Lcom/ironsource/z;)Lcom/ironsource/a9;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/a9;->a()V

    return-void
.end method
