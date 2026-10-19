###### Class com.ironsource.w8.a (com.ironsource.w8$a)
.class Lcom/ironsource/w8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/l8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w8;
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

    iput-object p1, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/oc;->c(J)V

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->d(Lcom/ironsource/w8;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/oc;->b(J)V

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/oc;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/w8;->b(Lcom/ironsource/w8;J)V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method
