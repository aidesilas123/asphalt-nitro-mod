###### Class com.tapjoy.internal.k2 (com.tapjoy.internal.k2)
.class public final Lcom/tapjoy/internal/k2;
.super Lcom/tapjoy/internal/z5;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/y1;


# instance fields
.field public final d:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/y1;

    invoke-direct {v0}, Lcom/tapjoy/internal/y1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/k2;->c:Lcom/tapjoy/internal/y1;

    return-void
.end method

.method public constructor <init>(Ljava/util/AbstractList;Lcom/tapjoy/internal/c1;)V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/k2;->c:Lcom/tapjoy/internal/y1;

    invoke-direct {p0, v0, p2}, Lcom/tapjoy/internal/z5;-><init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V

    const-string p2, "elements"

    invoke-static {p2, p1}, Lcom/tapjoy/internal/i3;->a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/k2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/k2;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/c1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/tapjoy/internal/z5;->b:I

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/z5;->b:I

    :cond_17
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "StringList{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
