###### Class com.applovin.exoplayer2.common.base.b (com.applovin.exoplayer2.common.base.b)
.class abstract Lcom/applovin/exoplayer2/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/base/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nA:Lcom/applovin/exoplayer2/common/base/b$a;

.field private nB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nE:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    return-void
.end method

.method private eV()Z
    .registers 3

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nG:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->eT()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    if-eq v0, v1, :cond_16

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nD:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract eT()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final eU()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nG:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$1;->nC:[I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/b;->eV()Z

    move-result v0

    return v0

    :cond_22
    return v2

    :cond_23
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nE:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    return-object v0

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.applovin.exoplayer2.common.base.b.AnonymousClass1 (com.applovin.exoplayer2.common.base.b$1)
.class synthetic Lcom/applovin/exoplayer2/common/base/b$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic nC:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/applovin/exoplayer2/common/base/b$a;->values()[Lcom/applovin/exoplayer2/common/base/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/applovin/exoplayer2/common/base/b$1;->nC:[I

    :try_start_9
    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nD:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$1;->nC:[I

    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.applovin.exoplayer2.common.base.b.a (com.applovin.exoplayer2.common.base.b$a)
.class final enum Lcom/applovin/exoplayer2/common/base/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/exoplayer2/common/base/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum nD:Lcom/applovin/exoplayer2/common/base/b$a;

.field public static final enum nE:Lcom/applovin/exoplayer2/common/base/b$a;

.field public static final enum nF:Lcom/applovin/exoplayer2/common/base/b$a;

.field public static final enum nG:Lcom/applovin/exoplayer2/common/base/b$a;

.field private static final synthetic nH:[Lcom/applovin/exoplayer2/common/base/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/applovin/exoplayer2/common/base/b$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/common/base/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nD:Lcom/applovin/exoplayer2/common/base/b$a;

    new-instance v1, Lcom/applovin/exoplayer2/common/base/b$a;

    const-string v3, "NOT_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/exoplayer2/common/base/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nE:Lcom/applovin/exoplayer2/common/base/b$a;

    new-instance v3, Lcom/applovin/exoplayer2/common/base/b$a;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/applovin/exoplayer2/common/base/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    new-instance v5, Lcom/applovin/exoplayer2/common/base/b$a;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/applovin/exoplayer2/common/base/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/applovin/exoplayer2/common/base/b$a;->nG:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/applovin/exoplayer2/common/base/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/applovin/exoplayer2/common/base/b$a;->nH:[Lcom/applovin/exoplayer2/common/base/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/exoplayer2/common/base/b$a;
    .registers 2

    const-class v0, Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/common/base/b$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/exoplayer2/common/base/b$a;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nH:[Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {v0}, [Lcom/applovin/exoplayer2/common/base/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/common/base/b$a;

    return-object v0
.end method
