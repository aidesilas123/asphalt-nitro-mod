###### Class com.tapjoy.internal.h1 (com.tapjoy.internal.h1)
.class public final Lcom/tapjoy/internal/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/Writer;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/e4;->f:Lcom/tapjoy/internal/e4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ":"

    iput-object v0, p0, Lcom/tapjoy/internal/h1;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 9

    const-string v0, "null"

    const/4 v1, 0x0

    if-nez p1, :cond_e

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_e
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    if-eqz p1, :cond_22

    const-string p1, "true"

    goto :goto_24

    :cond_22
    const-string p1, "false"

    :goto_24
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_28
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_b3

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_43

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_43
    instance-of v0, p1, Ljava/lang/Double;

    const-string v2, "Numeric values must be finite, but was "

    if-eqz v0, :cond_7a

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_68

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_68

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-Infinity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "Infinity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "NaN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_c0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/h1;->i(Ljava/lang/String;)V

    return-void

    :cond_c0
    instance-of v2, p1, Lcom/tapjoy/internal/y7;

    if-nez v2, :cond_275

    instance-of v2, p1, Ljava/util/Collection;

    const-string v3, "]"

    const-string v4, "["

    const-string v5, "Nesting problem: "

    const/4 v6, 0x1

    if-eqz v2, :cond_12c

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V

    goto :goto_e4

    :cond_f2
    sget-object p1, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    sget-object v0, Lcom/tapjoy/internal/e4;->b:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/e4;

    if-eq v1, v0, :cond_11c

    if-ne v1, p1, :cond_108

    goto :goto_11c

    :cond_108
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11c
    :goto_11c
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_12c
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_1e3

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/tapjoy/internal/e4;->c:Lcom/tapjoy/internal/e4;

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/e4;

    sget-object v3, Lcom/tapjoy/internal/e4;->e:Lcom/tapjoy/internal/e4;

    if-ne v2, v3, :cond_178

    iget-object v2, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_17c

    :cond_178
    sget-object v3, Lcom/tapjoy/internal/e4;->c:Lcom/tapjoy/internal/e4;

    if-ne v2, v3, :cond_193

    :goto_17c
    sget-object v2, Lcom/tapjoy/internal/e4;->d:Lcom/tapjoy/internal/e4;

    iget-object v3, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->i(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V

    goto :goto_14b

    :cond_193
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a7
    sget-object p1, Lcom/tapjoy/internal/e4;->c:Lcom/tapjoy/internal/e4;

    sget-object v0, Lcom/tapjoy/internal/e4;->e:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/e4;

    if-eq v1, v0, :cond_1d1

    if-ne v1, p1, :cond_1bd

    goto :goto_1d1

    :cond_1bd
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d1
    :goto_1d1
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_1e3
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_207

    check-cast p1, Ljava/util/Date;

    sget-object v2, Lcom/tapjoy/internal/g0;->a:Lcom/tapjoy/internal/o;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_200

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_206

    :cond_200
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/h1;->i(Ljava/lang/String;)V

    :goto_206
    return-void

    :cond_207
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_261

    check-cast p1, [Ljava/lang/Object;

    sget-object v0, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/h1;->j(Z)V

    iget-object v2, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    array-length v0, p1

    :goto_21d
    if-ge v1, v0, :cond_227

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21d

    :cond_227
    sget-object p1, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    sget-object v0, Lcom/tapjoy/internal/e4;->b:Lcom/tapjoy/internal/e4;

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/e4;

    if-eq v1, v0, :cond_251

    if-ne v1, p1, :cond_23d

    goto :goto_251

    :cond_23d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_251
    :goto_251
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_275
    check-cast p1, Lcom/tapjoy/internal/y7;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/h1;->j(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/e4;

    sget-object v1, Lcom/tapjoy/internal/e4;->g:Lcom/tapjoy/internal/e4;

    if-ne v0, v1, :cond_18

    return-void

    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_95

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_8a

    const/16 v5, 0xd

    if-eq v4, v5, :cond_82

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_77

    if-eq v4, v6, :cond_77

    const/16 v5, 0x2028

    const-string v6, "\\u%04x"

    const/4 v7, 0x1

    if-eq v4, v5, :cond_65

    const/16 v5, 0x2029

    if-eq v4, v5, :cond_65

    packed-switch v4, :pswitch_data_9c

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_47

    iget-object v5, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :cond_47
    iget-object v5, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_91

    :pswitch_4d
    iget-object v4, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :pswitch_55
    iget-object v4, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :pswitch_5d
    iget-object v4, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :cond_65
    iget-object v5, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :cond_77
    iget-object v5, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    iget-object v5, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_91

    :cond_82
    iget-object v4, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    :cond_8a
    iget-object v4, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_95
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x8
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
    .end packed-switch
.end method

.method public final j(Z)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/e4;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_70

    if-eq v0, v2, :cond_68

    const/4 v1, 0x3

    if-eq v0, v1, :cond_54

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    const/4 p1, 0x6

    if-eq v0, p1, :cond_35

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nesting problem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    if-eqz p1, :cond_4c

    sget-object p1, Lcom/tapjoy/internal/e4;->g:Lcom/tapjoy/internal/e4;

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must start with an array or an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    sget-object p1, Lcom/tapjoy/internal/e4;->e:Lcom/tapjoy/internal/e4;

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_68
    iget-object p1, p0, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_7c

    :cond_70
    sget-object p1, Lcom/tapjoy/internal/e4;->b:Lcom/tapjoy/internal/e4;

    iget-object v0, p0, Lcom/tapjoy/internal/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7c
    return-void
.end method
