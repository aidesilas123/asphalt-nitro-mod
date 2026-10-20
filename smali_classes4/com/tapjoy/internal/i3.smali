###### Class com.tapjoy.internal.i3 (com.tapjoy.internal.i3)
.class public abstract Lcom/tapjoy/internal/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/tapjoy/internal/j6;
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/j6;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/j6;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;
    .registers 3

    if-eqz p1, :cond_2f

    instance-of v0, p1, Lcom/tapjoy/internal/j6;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/tapjoy/internal/j6;

    iget-object p1, p1, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_2e

    instance-of v0, p1, Lcom/tapjoy/internal/r8;

    if-eqz v0, :cond_15

    goto :goto_2e

    :cond_15
    new-instance v0, Lcom/tapjoy/internal/r8;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/r8;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return-object v0

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ".contains(null)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, " == null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_26

    aget-object v4, p0, v3

    if-nez v4, :cond_23

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_17

    const-string v2, "s"

    :cond_17
    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Required field"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/Serializable;Ljava/io/Serializable;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
