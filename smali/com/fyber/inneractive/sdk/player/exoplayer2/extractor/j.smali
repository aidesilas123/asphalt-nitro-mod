###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.j (com.fyber.inneractive.sdk.player.exoplayer2.extractor.j)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g$a;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g$a;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a$b;

    array-length v3, v2

    if-ge v1, v3, :cond_4d

    aget-object v2, v2, v1

    instance-of v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/e;

    if-eqz v3, :cond_4a

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/e;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/e;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/e;->d:Ljava/lang/String;

    const-string v4, "iTunSMPB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    goto :goto_46

    :cond_1d
    sget-object v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_46

    :try_start_29
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-gtz v3, :cond_40

    if-lez v2, :cond_46

    :cond_40
    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_44} :catch_46

    const/4 v2, 0x1

    goto :goto_47

    :catch_46
    :cond_46
    :goto_46
    const/4 v2, 0x0

    :goto_47
    if-eqz v2, :cond_4a

    return v4

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4d
    return v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.j.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.j$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
