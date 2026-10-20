###### Class com.ironsource.t1.b (com.ironsource.t1$b)
.class Lcom/ironsource/t1$b;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$b;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$b;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->R(Lcom/ironsource/t1;)V

    return-void
.end method
