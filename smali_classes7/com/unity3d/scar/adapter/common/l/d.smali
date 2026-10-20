###### Class com.unity3d.scar.adapter.common.l.d (com.unity3d.scar.adapter.common.l.d)
.class public Lcom/unity3d/scar/adapter/common/l/d;
.super Ljava/lang/Object;
.source "SignalCallbackListener.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/l/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/unity3d/scar/adapter/common/l/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/unity3d/scar/adapter/common/a;

.field private b:Lcom/unity3d/scar/adapter/common/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/scar/adapter/common/l/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/unity3d/scar/adapter/common/l/f;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/scar/adapter/common/l/d;-><init>(Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/g;Lcom/unity3d/scar/adapter/common/l/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/g;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/a;",
            "Lcom/unity3d/scar/adapter/common/l/g<",
            "TT;>;",
            "Lcom/unity3d/scar/adapter/common/l/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/l/d;->a:Lcom/unity3d/scar/adapter/common/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/l/d;->b:Lcom/unity3d/scar/adapter/common/l/g;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/common/l/d;->c:Lcom/unity3d/scar/adapter/common/l/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/d;->c:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/scar/adapter/common/l/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/scar/adapter/common/l/d;->b:Lcom/unity3d/scar/adapter/common/l/g;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1, p3}, Lcom/unity3d/scar/adapter/common/l/g;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/l/d;->a:Lcom/unity3d/scar/adapter/common/a;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/a;->b()V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/d;->c:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/l/f;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/l/d;->a:Lcom/unity3d/scar/adapter/common/a;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/a;->b()V

    return-void
.end method
