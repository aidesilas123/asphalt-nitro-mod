###### Class com.google.common.io.m (com.google.common.io.m)
.class Lcom/google/common/io/m;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/m;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/io/m;->d()V

    return-void
.end method

.method private d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/m;->close()V

    iget-object v0, p0, Lcom/google/common/io/m;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/io/m;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->c()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    :cond_19
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    iput-object v1, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method public read([CII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/google/common/io/m;->d()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/m;->read([CII)I

    move-result p1

    return p1

    :cond_17
    return v0
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    const-string v4, "n is negative"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lez v2, :cond_21

    :goto_10
    iget-object v2, p0, Lcom/google/common/io/m;->b:Ljava/io/Reader;

    if-eqz v2, :cond_21

    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1d

    return-wide v2

    :cond_1d
    invoke-direct {p0}, Lcom/google/common/io/m;->d()V

    goto :goto_10

    :cond_21
    return-wide v0
.end method
