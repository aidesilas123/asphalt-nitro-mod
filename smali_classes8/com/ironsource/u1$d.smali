###### Class com.ironsource.u1.d (com.ironsource.u1$d)
.class Lcom/ironsource/u1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u1;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/u1;


# direct methods
.method constructor <init>(Lcom/ironsource/u1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u1$d;->a:Lcom/ironsource/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/u1$d;->a:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->R(Lcom/ironsource/u1;)V

    return-void
.end method
