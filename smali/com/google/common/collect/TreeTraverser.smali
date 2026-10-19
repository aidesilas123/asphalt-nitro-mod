###### Class com.google.common.collect.TreeTraverser (com.google.common.collect.TreeTraverser)
.class public abstract Lcom/google/common/collect/TreeTraverser;
.super Ljava/lang/Object;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static using(Lcom/google/common/base/f;)Lcom/google/common/collect/TreeTraverser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/f<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lcom/google/common/collect/TreeTraverser<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/TreeTraverser$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeTraverser$a;-><init>(Lcom/google/common/base/f;)V

    return-object v0
.end method

###### Class com.google.common.collect.TreeTraverser.a (com.google.common.collect.TreeTraverser$a)
.class Lcom/google/common/collect/TreeTraverser$a;
.super Lcom/google/common/collect/TreeTraverser;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser;->using(Lcom/google/common/base/f;)Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeTraverser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Lcom/google/common/base/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$a;->a:Lcom/google/common/base/f;

    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method
