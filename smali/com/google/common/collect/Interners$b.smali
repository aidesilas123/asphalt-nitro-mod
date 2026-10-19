###### Class com.google.common.collect.Interners.b (com.google.common.collect.Interners$b)
.class public Lcom/google/common/collect/Interners$b;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/MapMaker;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Interners$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/w1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->l()Lcom/google/common/collect/MapMaker;

    :cond_9
    new-instance v0, Lcom/google/common/collect/Interners$d;

    iget-object v1, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$d;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$a;)V

    return-object v0
.end method

.method public b()Lcom/google/common/collect/Interners$b;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-object p0
.end method

.method public c()Lcom/google/common/collect/Interners$b;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-object p0
.end method
