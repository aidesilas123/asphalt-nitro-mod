###### Class com.applovin.exoplayer2.i.i.a (com.applovin.exoplayer2.i.i.a)
.class public final Lcom/applovin/exoplayer2/i/i/a;
.super Lcom/applovin/exoplayer2/i/d;
.source "SourceFile"


# instance fields
.field private final Cp:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Mp4WebvttDecoder"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private static D(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/i/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_3
    :goto_3
    if-lez p1, :cond_48

    const/16 v3, 0x8

    if-lt p1, v3, :cond_40

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v6

    invoke-static {v3, v6, v4}, Lcom/applovin/exoplayer2/l/ai;->t([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    sub-int/2addr p1, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_2e

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/i/f;->aA(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v2

    goto :goto_3

    :cond_2e
    const v4, 0x7061796c

    if-ne v5, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/applovin/exoplayer2/i/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_3

    :cond_40
    new-instance p0, Lcom/applovin/exoplayer2/i/h;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    if-nez v1, :cond_4c

    const-string v1, ""

    :cond_4c
    if-eqz v2, :cond_57

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/i/a$a;->m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object p0

    goto :goto_5b

    :cond_57
    invoke-static {v1}, Lcom/applovin/exoplayer2/i/i/f;->n(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a;

    move-result-object p0

    :goto_5b
    return-object p0
.end method


# virtual methods
.method protected c([BIZ)Lcom/applovin/exoplayer2/i/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    if-lez p2, :cond_49

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_41

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result p2

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result p3

    const v0, 0x76747463

    if-ne p3, v0, :cond_39

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, p2}, Lcom/applovin/exoplayer2/i/i/a;->D(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/i/a;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_39
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/i/a;->Cp:Lcom/applovin/exoplayer2/l/y;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    goto :goto_a

    :cond_41
    new-instance p1, Lcom/applovin/exoplayer2/i/h;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance p2, Lcom/applovin/exoplayer2/i/i/b;

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/i/i/b;-><init>(Ljava/util/List;)V

    return-object p2
.end method
