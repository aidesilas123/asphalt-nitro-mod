###### Class com.applovin.exoplayer2.common.base.MoreObjects (com.applovin.exoplayer2.common.base.MoreObjects)
.class public final Lcom/applovin/exoplayer2/common/base/MoreObjects;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "Both parameters are null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method

.method public static toStringHelper(Ljava/lang/Class;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/String;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.base.MoreObjects.AnonymousClass1 (com.applovin.exoplayer2.common.base.MoreObjects$1)
.class synthetic Lcom/applovin/exoplayer2/common/base/MoreObjects$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.common.base.MoreObjects.ToStringHelper (com.applovin.exoplayer2.common.base.MoreObjects$ToStringHelper)
.class public final Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

.field private holderTail:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;-><init>(Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;-><init>(Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    iput-object v0, v1, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oz:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    iput-object p1, v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oy:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    iput-object p2, v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oy:Ljava/lang/Object;

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;D)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;F)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(C)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(D)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(F)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(I)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(J)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Z)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oz:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    const-string v3, ""

    :goto_19
    if-eqz v2, :cond_57

    iget-object v4, v2, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oy:Ljava/lang/Object;

    if-eqz v0, :cond_21

    if-eqz v4, :cond_54

    :cond_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->name:Ljava/lang/String;

    if-eqz v3, :cond_30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_4f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_52
    const-string v3, ", "

    :cond_54
    iget-object v2, v2, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;->oz:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;

    goto :goto_19

    :cond_57
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.base.MoreObjects.ToStringHelper.a (com.applovin.exoplayer2.common.base.MoreObjects$ToStringHelper$a)
.class final Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field oy:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field oz:Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/common/base/MoreObjects$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/MoreObjects$ToStringHelper$a;-><init>()V

    return-void
.end method
