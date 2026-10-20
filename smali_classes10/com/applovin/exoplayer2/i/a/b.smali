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
