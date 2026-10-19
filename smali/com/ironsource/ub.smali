###### Class com.json.ub (com.ironsource.ub)
.class public Lcom/ironsource/ub;
.super Lcom/ironsource/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ub$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/d<",
        "Lcom/ironsource/ub$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/d;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/ub$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/d;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/ironsource/ub$a;

    invoke-interface {v0}, Lcom/ironsource/ub$a;->a()V

    :cond_9
    return-void
.end method

.method public e()V
    .registers 1

    invoke-virtual {p0}, Lcom/ironsource/d;->f()V

    return-void
.end method

###### Class com.ironsource.ub.a (com.ironsource.ub$a)
.class public interface abstract Lcom/ironsource/ub$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
