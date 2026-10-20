###### Class com.ironsource.q1.a (com.ironsource.q1$a)
.class Lcom/ironsource/q1$a;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q1;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/q1;


# direct methods
.method constructor <init>(Lcom/ironsource/q1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/q1$a;->a:Lcom/ironsource/q1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/q1$a;->a:Lcom/ironsource/q1;

    invoke-static {v0}, Lcom/ironsource/q1;->x(Lcom/ironsource/q1;)V

    return-void
.end method
