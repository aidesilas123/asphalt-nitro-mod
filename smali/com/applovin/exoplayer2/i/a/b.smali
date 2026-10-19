###### Class com.applovin.exoplayer2.i.a.b (com.applovin.exoplayer2.i.a.b)
.class public final Lcom/applovin/exoplayer2/i/a/b;
.super Lcom/applovin/exoplayer2/i/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/a/b$a;,
        Lcom/applovin/exoplayer2/i/a/b$b;,
        Lcom/applovin/exoplayer2/i/a/b$c;
    }
.end annotation


# instance fields
.field private final OO:Lcom/applovin/exoplayer2/l/y;

.field private OV:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private OW:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final Po:Lcom/applovin/exoplayer2/l/x;

.field private Pp:I

.field private final Pq:Z

.field private final Pr:I

.field private final Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

.field private Pt:Lcom/applovin/exoplayer2/i/a/b$b;

.field private Pu:Lcom/applovin/exoplayer2/i/a/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Pv:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 6
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/c;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    new-instance v0, Lcom/applovin/exoplayer2/l/x;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/x;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pp:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_18

    const/4 p1, 0x1

    :cond_18
    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pr:I

    const/4 p1, 0x0

    if-eqz p2, :cond_24

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/e;->m(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pq:Z

    const/16 p2, 0x8

    new-array v0, p2, [Lcom/applovin/exoplayer2/i/a/b$b;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, p2, :cond_3c

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    new-instance v2, Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-direct {v2}, Lcom/applovin/exoplayer2/i/a/b$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3c
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    return-void
.end method

.method private en(I)V
    .registers 6

    if-eqz p1, :cond_81

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_75

    packed-switch p1, :pswitch_data_82

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_30

    const/16 v1, 0x17

    if-gt p1, v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_81

    :cond_30
    const/16 v0, 0x18

    if-lt p1, v0, :cond_54

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_81

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :pswitch_69
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_81

    :pswitch_71
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mj()V

    goto :goto_81

    :cond_75
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->mm()V

    goto :goto_81

    :cond_7b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mi()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->OV:Ljava/util/List;

    :cond_81
    :goto_81
    :pswitch_81
    return-void

    :pswitch_data_82
    .packed-switch 0xc
        :pswitch_71
        :pswitch_69
        :pswitch_81
    .end packed-switch
.end method

.method private eo(I)V
    .registers 6

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_118

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_117

    :pswitch_20
    add-int/lit16 p1, p1, -0x98

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/a/b;->ev(I)V

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pv:I

    if-eq v0, p1, :cond_117

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pv:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    goto/16 :goto_117

    :pswitch_33
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_117

    :cond_44
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mu()V

    goto/16 :goto_117

    :pswitch_49
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_117

    :cond_58
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mt()V

    goto/16 :goto_117

    :pswitch_5d
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result p1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_117

    :cond_6e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->ms()V

    goto/16 :goto_117

    :pswitch_73
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result p1

    if-nez p1, :cond_82

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_117

    :cond_82
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mr()V

    goto/16 :goto_117

    :pswitch_87
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mj()V

    goto/16 :goto_117

    :pswitch_8c
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto/16 :goto_117

    :goto_93
    :pswitch_93
    if-gt v2, v1, :cond_117

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->Y()V

    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    :pswitch_a9
    const/4 p1, 0x1

    :goto_aa
    if-gt p1, v1, :cond_117

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/a/b$b;->mx()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/i/a/b$b;->R(Z)V

    :cond_c2
    add-int/lit8 p1, p1, 0x1

    goto :goto_aa

    :goto_c5
    :pswitch_c5
    if-gt v2, v1, :cond_117

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result p1

    if-eqz p1, :cond_d9

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->R(Z)V

    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    :pswitch_dc
    const/4 p1, 0x1

    :goto_dd
    if-gt p1, v1, :cond_117

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a/b$b;->R(Z)V

    :cond_f0
    add-int/lit8 p1, p1, 0x1

    goto :goto_dd

    :goto_f3
    :pswitch_f3
    if-gt v2, v1, :cond_117

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result p1

    if-eqz p1, :cond_106

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a/b$b;->clear()V

    :cond_106
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :pswitch_109
    add-int/lit8 p1, p1, -0x80

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pv:I

    if-eq v0, p1, :cond_117

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pv:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    :cond_117
    :goto_117
    :pswitch_117
    return-void

    :pswitch_data_118
    .packed-switch 0x80
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_f3
        :pswitch_dc
        :pswitch_c5
        :pswitch_a9
        :pswitch_93
        :pswitch_8c
        :pswitch_117
        :pswitch_87
        :pswitch_73
        :pswitch_5d
        :pswitch_49
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_33
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private ep(I)V
    .registers 3

    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    goto :goto_27

    :cond_4
    const/16 v0, 0xf

    if-gt p1, v0, :cond_10

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_27

    :cond_10
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1c

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_27

    :cond_1c
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_27

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method private eq(I)V
    .registers 3

    const/16 v0, 0x87

    if-gt p1, v0, :cond_c

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_30

    :cond_c
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_18

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    goto :goto_30

    :cond_18
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_30

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method private er(I)V
    .registers 3

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_14

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    :goto_14
    return-void
.end method

.method private es(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    return-void
.end method

.method private et(I)V
    .registers 4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_11b

    const/16 v0, 0x21

    if-eq p1, v0, :cond_113

    const/16 v0, 0x25

    if-eq p1, v0, :cond_10b

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_103

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_fb

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_f3

    const/16 v0, 0x39

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_e3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_db

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_d3

    packed-switch p1, :pswitch_data_122

    packed-switch p1, :pswitch_data_132

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_120

    :pswitch_46
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_4f
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_58
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_61
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_6a
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_73
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_7c
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_85
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_8e
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_97
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_a0
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_a9
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_b2
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto/16 :goto_120

    :pswitch_bb
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :pswitch_c3
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :pswitch_cb
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_d3
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_db
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_e3
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_eb
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_f3
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_fb
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_103
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_10b
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_113
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_120

    :cond_11b
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    :goto_120
    return-void

    nop

    :pswitch_data_122
    .packed-switch 0x30
        :pswitch_cb
        :pswitch_c3
        :pswitch_bb
        :pswitch_b2
        :pswitch_a9
        :pswitch_a0
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x76
        :pswitch_97
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_58
        :pswitch_4f
        :pswitch_46
    .end packed-switch
.end method

.method private eu(I)V
    .registers 4

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    goto :goto_29

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    :goto_29
    return-void
.end method

.method private ev(I)V
    .registers 16

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v1, v0, p1

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v3

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v4

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    iget-object v6, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v6

    iget-object v7, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v7

    iget-object v8, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v8

    iget-object v9, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v11

    iget-object v9, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v9, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v9

    iget-object v10, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v10, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v10, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v10

    iget-object v12, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v12, v0}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v12

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v13

    move v5, p1

    invoke-virtual/range {v1 .. v13}, Lcom/applovin/exoplayer2/i/a/b$b;->a(ZZZIZIIIIIII)V

    return-void
.end method

.method private mi()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/i/a/b$b;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/i/a/b$b;->mx()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/i/a/b$b;->mz()Lcom/applovin/exoplayer2/i/a/b$a;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2f
    invoke-static {}, Lcom/applovin/exoplayer2/i/a/b$a;->mv()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/i/a/b$a;

    iget-object v3, v3, Lcom/applovin/exoplayer2/i/a/b$a;->Px:Lcom/applovin/exoplayer2/i/a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_53
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private mj()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/a/b$b;->Y()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method private mp()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mq()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    return-void
.end method

.method private mq()V
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    iget v0, v0, Lcom/applovin/exoplayer2/i/a/b$c;->Qe:I

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-string v4, "Cea708Decoder"

    if-eq v1, v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget v1, v1, Lcom/applovin/exoplayer2/i/a/b$c;->Qe:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget v1, v1, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget v1, v1, Lcom/applovin/exoplayer2/i/a/b$c;->Qd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/applovin/exoplayer2/l/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget-object v5, v1, Lcom/applovin/exoplayer2/i/a/b$c;->Qf:[B

    iget v1, v1, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    invoke-virtual {v0, v5, v1}, Lcom/applovin/exoplayer2/l/x;->l([BI)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_85

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    if-ge v0, v5, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended service number: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    if-nez v1, :cond_a3

    if-eqz v0, :cond_a2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceNumber is non-zero ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    return-void

    :cond_a3
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pr:I

    if-eq v0, v1, :cond_a8

    return-void

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/x;->pf()I

    move-result v1

    if-lez v1, :cond_126

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v5, :cond_f2

    if-gt v1, v9, :cond_cb

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->en(I)V

    goto :goto_a9

    :cond_cb
    if-gt v1, v8, :cond_d1

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->er(I)V

    goto :goto_103

    :cond_d1
    if-gt v1, v7, :cond_d7

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->eo(I)V

    goto :goto_103

    :cond_d7
    if-gt v1, v6, :cond_dd

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->es(I)V

    goto :goto_103

    :cond_dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid base command: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_f2
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    if-gt v1, v9, :cond_fe

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->ep(I)V

    goto :goto_a9

    :cond_fe
    if-gt v1, v8, :cond_105

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->et(I)V

    :goto_103
    const/4 v0, 0x1

    goto :goto_a9

    :cond_105
    if-gt v1, v7, :cond_10b

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->eq(I)V

    goto :goto_a9

    :cond_10b
    if-gt v1, v6, :cond_111

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/a/b;->eu(I)V

    goto :goto_103

    :cond_111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_126
    if-eqz v0, :cond_12e

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mi()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OV:Ljava/util/List;

    :cond_12e
    return-void
.end method

.method private mr()V
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v6

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v7

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v8

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v9

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual/range {v2 .. v9}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIIZZII)V

    return-void
.end method

.method private ms()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->f(III)I

    move-result v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {v3, v0, v2, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->e(III)V

    return-void
.end method

.method private mt()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->G(II)V

    return-void
.end method

.method private mu()V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v6

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/applovin/exoplayer2/i/a/b$b;->f(III)I

    move-result v7

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    if-eqz v2, :cond_43

    or-int/lit8 v0, v0, 0x4

    :cond_43
    move v9, v0

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v8

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v10

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v11

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v12

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Po:Lcom/applovin/exoplayer2/l/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-virtual/range {v5 .. v12}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIZIIII)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/applovin/exoplayer2/i/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/i/a/c;->a(Lcom/applovin/exoplayer2/i/j;)V

    return-void
.end method

.method protected b(Lcom/applovin/exoplayer2/i/j;)V
    .registers 10

    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_c9

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/applovin/exoplayer2/i/a/b;->OO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_45

    if-eq v1, v0, :cond_45

    goto :goto_15

    :cond_45
    if-nez p1, :cond_48

    goto :goto_15

    :cond_48
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_98

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mp()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pp:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7e

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_7e

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mj()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence number discontinuity. previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Pp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pp:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_86

    const/16 p1, 0x40

    :cond_86
    new-instance v1, Lcom/applovin/exoplayer2/i/a/b$c;

    invoke-direct {v1, v0, p1}, Lcom/applovin/exoplayer2/i/a/b$c;-><init>(II)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget-object p1, v1, Lcom/applovin/exoplayer2/i/a/b$c;->Qf:[B

    iget v0, v1, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    aput-byte v6, p1, v0

    goto :goto_b9

    :cond_98
    if-ne v1, v7, :cond_9b

    const/4 v3, 0x1

    :cond_9b
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    if-nez v0, :cond_a9

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_a9
    iget-object p1, v0, Lcom/applovin/exoplayer2/i/a/b$c;->Qf:[B

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    aput-byte v5, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    aput-byte v6, p1, v2

    :goto_b9
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    iget v0, p1, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    iget p1, p1, Lcom/applovin/exoplayer2/i/a/b$c;->Qe:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_15

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mp()V

    goto/16 :goto_15

    :cond_c9
    return-void
.end method

.method public bridge synthetic bd(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/i/a/c;->bd(J)V

    return-void
.end method

.method public dI()V
    .registers 4

    invoke-super {p0}, Lcom/applovin/exoplayer2/i/a/c;->dI()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OV:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OW:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pv:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b;->Ps:[Lcom/applovin/exoplayer2/i/a/b$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->Pt:Lcom/applovin/exoplayer2/i/a/b$b;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/b;->mj()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->Pu:Lcom/applovin/exoplayer2/i/a/b$c;

    return-void
.end method

.method public bridge synthetic lV()Lcom/applovin/exoplayer2/i/j;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    invoke-super {p0}, Lcom/applovin/exoplayer2/i/a/c;->lV()Lcom/applovin/exoplayer2/i/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lW()Lcom/applovin/exoplayer2/i/k;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    invoke-super {p0}, Lcom/applovin/exoplayer2/i/a/c;->lW()Lcom/applovin/exoplayer2/i/k;

    move-result-object v0

    return-object v0
.end method

.method protected mg()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OV:Ljava/util/List;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b;->OW:Ljava/util/List;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected mh()Lcom/applovin/exoplayer2/i/f;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OV:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b;->OW:Ljava/util/List;

    new-instance v1, Lcom/applovin/exoplayer2/i/a/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/i/a/d;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic release()V
    .registers 1

    invoke-super {p0}, Lcom/applovin/exoplayer2/i/a/c;->release()V

    return-void
.end method

###### Class com.applovin.exoplayer2.i.a.b.a (com.applovin.exoplayer2.i.a.b$a)
.class final Lcom/applovin/exoplayer2/i/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final Pw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/i/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Px:Lcom/applovin/exoplayer2/i/a;

.field public final Py:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/i/a/f;->a:Lcom/applovin/exoplayer2/i/a/f;

    sput-object v0, Lcom/applovin/exoplayer2/i/a/b$a;->Pw:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/i/a$a;->m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/i/a$a;->b(FI)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/applovin/exoplayer2/i/a$a;->ef(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/applovin/exoplayer2/i/a$a;->o(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/applovin/exoplayer2/i/a$a;->eg(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/applovin/exoplayer2/i/a$a;->p(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    if-eqz p9, :cond_29

    invoke-virtual {p1, p10}, Lcom/applovin/exoplayer2/i/a$a;->eh(I)Lcom/applovin/exoplayer2/i/a$a;

    :cond_29
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$a;->Px:Lcom/applovin/exoplayer2/i/a;

    iput p11, p0, Lcom/applovin/exoplayer2/i/a/b$a;->Py:I

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/i/a/b$a;Lcom/applovin/exoplayer2/i/a/b$a;)I
    .registers 2

    iget p1, p1, Lcom/applovin/exoplayer2/i/a/b$a;->Py:I

    iget p0, p0, Lcom/applovin/exoplayer2/i/a/b$a;->Py:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/applovin/exoplayer2/i/a/b$a;Lcom/applovin/exoplayer2/i/a/b$a;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/i/a/b$a;->a(Lcom/applovin/exoplayer2/i/a/b$a;Lcom/applovin/exoplayer2/i/a/b$a;)I

    move-result p0

    return p0
.end method

.method static synthetic mv()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/i/a/b$a;->Pw:Ljava/util/Comparator;

    return-object v0
.end method

###### Class com.applovin.exoplayer2.i.a.f (com.applovin.exoplayer2.i.a.f)
.class public final synthetic Lcom/applovin/exoplayer2/i/a/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/i/a/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/i/a/f;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/a/f;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/i/a/f;->a:Lcom/applovin/exoplayer2/i/a/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/applovin/exoplayer2/i/a/b$a;

    check-cast p2, Lcom/applovin/exoplayer2/i/a/b$a;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/i/a/b$a;->b(Lcom/applovin/exoplayer2/i/a/b$a;Lcom/applovin/exoplayer2/i/a/b$a;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.i.a.b.C0044b (com.applovin.exoplayer2.i.a.b$b)
.class final Lcom/applovin/exoplayer2/i/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final PA:I

.field public static final PB:I

.field private static final PC:[I

.field private static final PD:[I

.field private static final PE:[I

.field private static final PF:[Z

.field private static final PG:[I

.field private static final PH:[I

.field private static final PI:[I

.field private static final PJ:[I

.field public static final Pz:I


# instance fields
.field private final PK:Landroid/text/SpannableStringBuilder;

.field private PL:Z

.field private PM:Z

.field private PN:Z

.field private PO:I

.field private PP:I

.field private PQ:I

.field private PR:I

.field private PS:Z

.field private PT:I

.field private PU:I

.field private PV:I

.field private PW:I

.field private PX:I

.field private PY:I

.field private PZ:I

.field private final Ph:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private Pj:I

.field private Py:I

.field private Qa:I

.field private Qb:I

.field private Qc:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v2

    sput v2, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    invoke-static {v1, v1, v1, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v2

    sput v2, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    const/4 v3, 0x3

    invoke-static {v1, v1, v1, v3}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v4

    sput v4, Lcom/applovin/exoplayer2/i/a/b$b;->PB:I

    const/4 v5, 0x7

    new-array v6, v5, [I

    fill-array-data v6, :array_6a

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PC:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_7c

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PD:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_8e

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PE:[I

    new-array v6, v5, [Z

    fill-array-data v6, :array_a0

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PF:[Z

    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PG:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_a8

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PH:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_ba

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PI:[I

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    sput-object v5, Lcom/applovin/exoplayer2/i/a/b$b;->PJ:[I

    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->Y()V

    return-void
.end method

.method public static b(IIII)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p2, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p3, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_21

    if-eq p3, v1, :cond_21

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1e

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1c

    goto :goto_21

    :cond_1c
    const/4 p3, 0x0

    goto :goto_23

    :cond_1e
    const/16 p3, 0x7f

    goto :goto_23

    :cond_21
    :goto_21
    const/16 p3, 0xff

    :goto_23
    if-le p0, v1, :cond_28

    const/16 p0, 0xff

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-le p1, v1, :cond_2e

    const/16 p1, 0xff

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-le p2, v1, :cond_33

    const/16 v0, 0xff

    :cond_33
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static f(III)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public G(II)V
    .registers 3

    iget p2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    if-eq p2, p1, :cond_9

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    :cond_9
    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    return-void
.end method

.method public R(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    return-void
.end method

.method public Y()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    sget v0, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    sget v1, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    return-void
.end method

.method public a(C)V
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4a

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->my()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    :cond_1a
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq p1, v0, :cond_20

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    :cond_20
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    if-eq p1, v0, :cond_26

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    :cond_26
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq p1, v0, :cond_2c

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    :cond_2c
    :goto_2c
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    if-ge p1, v0, :cond_44

    :cond_3a
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_4f

    :cond_44
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    :cond_4a
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_4f
    return-void
.end method

.method public a(IIIZZII)V
    .registers 8

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1f

    if-nez p4, :cond_29

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    iget-object p7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    goto :goto_29

    :cond_1f
    if-eqz p4, :cond_29

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    :cond_29
    :goto_29
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq p1, p3, :cond_44

    if-nez p5, :cond_4e

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    iget-object p6, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    goto :goto_4e

    :cond_44
    if-eqz p5, :cond_4e

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(IIZIIII)V
    .registers 8

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    iput p7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    return-void
.end method

.method public a(ZZZIZIIIIIII)V
    .registers 24

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    move v5, p1

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    move v5, p4

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    move/from16 v5, p6

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    move/from16 v5, p7

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    move/from16 v5, p10

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    iget v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_46

    iput v6, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    :goto_29
    if-eqz v1, :cond_35

    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    if-ge v5, v6, :cond_3f

    :cond_35
    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_46

    :cond_3f
    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_46
    if-eqz v2, :cond_76

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    if-eq v1, v2, :cond_76

    iput v2, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    add-int/lit8 v1, v2, -0x1

    sget-object v2, Lcom/applovin/exoplayer2/i/a/b$b;->PG:[I

    aget v2, v2, v1

    sget v5, Lcom/applovin/exoplayer2/i/a/b$b;->PB:I

    sget-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PF:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/applovin/exoplayer2/i/a/b$b;->PD:[I

    aget v8, v8, v1

    sget-object v9, Lcom/applovin/exoplayer2/i/a/b$b;->PE:[I

    aget v9, v9, v1

    sget-object v10, Lcom/applovin/exoplayer2/i/a/b$b;->PC:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIZIIII)V

    :cond_76
    if-eqz v3, :cond_a7

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    if-eq v1, v3, :cond_a7

    iput v3, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/applovin/exoplayer2/i/a/b$b;->PI:[I

    aget v7, v7, v1

    sget-object v8, Lcom/applovin/exoplayer2/i/a/b$b;->PH:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIIZZII)V

    sget v2, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    sget-object v3, Lcom/applovin/exoplayer2/i/a/b$b;->PJ:[I

    aget v1, v3, v1

    sget v3, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/exoplayer2/i/a/b$b;->e(III)V

    :cond_a7
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    return-void
.end method

.method public e(III)V
    .registers 9

    iget p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1f

    iget p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    if-eq p3, p1, :cond_1f

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    sget p3, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    if-eq p1, p3, :cond_2d

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    :cond_2d
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq p1, v1, :cond_49

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    if-eq p1, p2, :cond_49

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_49
    sget p1, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    if-eq p2, p1, :cond_57

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    :cond_57
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public mm()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_f
    return-void
.end method

.method public mw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    return v0
.end method

.method public mx()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    return v0
.end method

.method public my()Landroid/text/SpannableString;
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4d

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq v2, v4, :cond_2d

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2d
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    if-eq v2, v4, :cond_3d

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3d
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq v2, v4, :cond_4d

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4d
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public mz()Lcom/applovin/exoplayer2/i/a/b$a;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_f
    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->my()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5e

    if-eq v1, v5, :cond_5b

    if-eq v1, v3, :cond_58

    if-ne v1, v4, :cond_3f

    goto :goto_5e

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_60

    :cond_5b
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_60

    :cond_5e
    :goto_5e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_60
    move-object v6, v1

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    if-eqz v1, :cond_70

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    iget v8, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_7d

    :cond_70
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    iget v7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_7d
    const v7, 0x3f666666    # 0.9f

    mul-float v1, v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float v8, v8, v7

    add-float v7, v8, v9

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    div-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_93

    const/4 v8, 0x0

    goto :goto_9a

    :cond_93
    div-int/lit8 v8, v1, 0x3

    if-ne v8, v5, :cond_99

    const/4 v8, 0x1

    goto :goto_9a

    :cond_99
    const/4 v8, 0x2

    :goto_9a
    rem-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_a0

    const/4 v9, 0x0

    goto :goto_a6

    :cond_a0
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_a5

    const/4 v9, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x2

    :goto_a6
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    sget v3, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    if-eq v1, v3, :cond_ad

    const/4 v0, 0x1

    :cond_ad
    new-instance v13, Lcom/applovin/exoplayer2/i/a/b$a;

    const/4 v5, 0x0

    const v11, -0x800001

    iget v12, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    iget v14, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v11

    move v10, v0

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/applovin/exoplayer2/i/a/b$a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method

###### Class com.applovin.exoplayer2.i.a.b.c (com.applovin.exoplayer2.i.a.b$c)
.class final Lcom/applovin/exoplayer2/i/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final Qd:I

.field public final Qe:I

.field public final Qf:[B

.field pS:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$c;->Qd:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/a/b$c;->Qe:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$c;->Qf:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$c;->pS:I

    return-void
.end method
