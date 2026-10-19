###### Class com.google.common.cache.CacheBuilderSpec.o (com.google.common.cache.CacheBuilderSpec$o)
.class Lcom/google/common/cache/CacheBuilderSpec$o;
.super Lcom/google/common/cache/CacheBuilderSpec$d;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "expireAfterWrite already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
