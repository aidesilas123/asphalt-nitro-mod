###### Class com.applovin.exoplayer2.common.a.b.AnonymousClass1 (com.applovin.exoplayer2.common.a.b$1)
.class synthetic Lcom/applovin/exoplayer2/common/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic oZ:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/b$a;->values()[Lcom/applovin/exoplayer2/common/a/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/applovin/exoplayer2/common/a/b$1;->oZ:[I

    :try_start_9
    sget-object v1, Lcom/applovin/exoplayer2/common/a/b$a;->pc:Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$1;->oZ:[I

    sget-object v1, Lcom/applovin/exoplayer2/common/a/b$a;->pa:Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
