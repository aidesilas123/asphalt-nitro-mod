###### Class com.google.common.cache.b (com.google.common.cache.b)
.class public final Lcom/google/common/cache/b;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/common/cache/c;


# instance fields
.field private final a:Lcom/google/common/cache/f;

.field private final b:Lcom/google/common/cache/f;

.field private final c:Lcom/google/common/cache/f;

.field private final d:Lcom/google/common/cache/f;

.field private final e:Lcom/google/common/cache/f;

.field private final f:Lcom/google/common/cache/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->a:Lcom/google/common/cache/f;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->b:Lcom/google/common/cache/f;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->c:Lcom/google/common/cache/f;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->d:Lcom/google/common/cache/f;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/f;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->f:Lcom/google/common/cache/f;

    return-void
.end method
