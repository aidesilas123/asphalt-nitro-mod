###### Class com.applovin.exoplayer2.i.c.a (com.applovin.exoplayer2.i.c.a)
.class public final Lcom/applovin/exoplayer2/i/c/a;
.super Lcom/applovin/exoplayer2/i/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/c/a$a;
    }
.end annotation


# instance fields
.field private final Rd:Lcom/applovin/exoplayer2/l/y;

.field private final Re:Lcom/applovin/exoplayer2/i/c/a$a;

.field private Rf:Ljava/util/zip/Inflater;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final vN:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "PgsDecoder"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->vN:Lcom/applovin/exoplayer2/l/y;

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Rd:Lcom/applovin/exoplayer2/l/y;

    new-instance v0, Lcom/applovin/exoplayer2/i/c/a$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/c/a$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Re:Lcom/applovin/exoplayer2/i/c/a$a;

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/i/c/a$a;)Lcom/applovin/exoplayer2/i/a;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_18

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-object v4

    :cond_18
    const/16 v0, 0x80

    if-eq v1, v0, :cond_2c

    packed-switch v1, :pswitch_data_38

    goto :goto_33

    :pswitch_20
    invoke-static {p1, p0, v2}, Lcom/applovin/exoplayer2/i/c/a$a;->c(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V

    goto :goto_33

    :pswitch_24
    invoke-static {p1, p0, v2}, Lcom/applovin/exoplayer2/i/c/a$a;->b(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V

    goto :goto_33

    :pswitch_28
    invoke-static {p1, p0, v2}, Lcom/applovin/exoplayer2/i/c/a$a;->a(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V

    goto :goto_33

    :cond_2c
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/c/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/c/a$a;->Y()V

    :goto_33
    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-object v4

    nop

    :pswitch_data_38
    .packed-switch 0x14
        :pswitch_28
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method private ac(Lcom/applovin/exoplayer2/l/y;)V
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pm()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Rf:Ljava/util/zip/Inflater;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Rf:Ljava/util/zip/Inflater;

    :cond_19
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Rd:Lcom/applovin/exoplayer2/l/y;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a;->Rf:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/l/y;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a;->Rd:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a;->Rd:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    :cond_32
    return-void
.end method


# virtual methods
.method protected c([BIZ)Lcom/applovin/exoplayer2/i/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/c/a;->vN:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/c/a;->vN:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/c/a;->ac(Lcom/applovin/exoplayer2/l/y;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/c/a;->Re:Lcom/applovin/exoplayer2/i/c/a$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/c/a$a;->Y()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    :goto_14
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/c/a;->vN:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_2b

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/c/a;->vN:Lcom/applovin/exoplayer2/l/y;

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/c/a;->Re:Lcom/applovin/exoplayer2/i/c/a$a;

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/i/c/a;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/i/c/a$a;)Lcom/applovin/exoplayer2/i/a;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2b
    new-instance p2, Lcom/applovin/exoplayer2/i/c/b;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/i/c/b;-><init>(Ljava/util/List;)V

    return-object p2
.end method
