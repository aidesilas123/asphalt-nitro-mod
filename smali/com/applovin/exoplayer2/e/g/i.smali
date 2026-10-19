###### Class com.applovin.exoplayer2.e.g.i (com.applovin.exoplayer2.e.g.i)
.class final Lcom/applovin/exoplayer2/e/g/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/g/i$a;
    }
.end annotation


# static fields
.field private static final AJ:Lcom/applovin/exoplayer2/common/base/Splitter;

.field private static final AK:Lcom/applovin/exoplayer2/common/base/Splitter;


# instance fields
.field private final AL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/e/g/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private AM:I

.field private AN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Splitter;->on(C)Lcom/applovin/exoplayer2/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/g/i;->AJ:Lcom/applovin/exoplayer2/common/base/Splitter;

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Splitter;->on(C)Lcom/applovin/exoplayer2/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/g/i;->AK:Lcom/applovin/exoplayer2/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    return-void
.end method

.method private static I(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_42

    :sswitch_c
    const-string v0, "Super_SlowMotion_BGM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "Super_SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "Super_SlowMotion_Edit_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_72

    const/4 p0, 0x0

    const-string v0, "Invalid SEF name"

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :pswitch_4d
    const/16 p0, 0xb01

    return p0

    :pswitch_50
    const/16 p0, 0xb04

    return p0

    :pswitch_53
    const/16 p0, 0xb00

    return p0

    :pswitch_56
    const/16 p0, 0xb03

    return p0

    :pswitch_59
    const/16 p0, 0x890

    return p0

    :sswitch_data_5c
    .sparse-switch
        -0x6604662e -> :sswitch_38
        -0x4f6659e5 -> :sswitch_2d
        -0x4a96a712 -> :sswitch_22
        -0x3182f331 -> :sswitch_17
        0x68f2d704 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
    .end packed-switch
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/e/i;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/g/a$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/i;->AN:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    new-instance v2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v3}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    :goto_1f
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_70

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/i$a;

    iget-wide v3, p1, Lcom/applovin/exoplayer2/e/g/i$a;->wE:J

    sub-long/2addr v3, v0

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/i;->I(Ljava/lang/String;)I

    move-result v4

    iget p1, p1, Lcom/applovin/exoplayer2/e/g/i$a;->oW:I

    add-int/lit8 v3, v3, 0x8

    sub-int/2addr p1, v3

    const/16 v3, 0x890

    if-eq v4, v3, :cond_66

    const/16 p1, 0xb00

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb01

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb03

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb04

    if-ne v4, p1, :cond_60

    goto :goto_6d

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_66
    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/e/g/i;->m(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/g/f/c;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_70
    return-void
.end method

.method private g(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/applovin/exoplayer2/e/g/i;->AN:I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    const v1, 0x53454654

    if-eq v0, v1, :cond_24

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return-void

    :cond_24
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AN:I

    add-int/lit8 p1, p1, -0xc

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    return-void
.end method

.method private h(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/i;->AN:I

    add-int/lit8 v2, v2, -0xc

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    new-instance v4, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v4, v2}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v2}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    const/4 p1, 0x0

    :goto_19
    div-int/lit8 v5, v2, 0xc

    if-ge p1, v5, :cond_59

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->ps()S

    move-result v5

    const/16 v7, 0x890

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb00

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb01

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb03

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb04

    if-eq v5, v7, :cond_3d

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    goto :goto_56

    :cond_3d
    iget v7, p0, Lcom/applovin/exoplayer2/e/g/i;->AN:I

    int-to-long v7, v7

    sub-long v7, v0, v7

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v9

    iget-object v10, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    new-instance v11, Lcom/applovin/exoplayer2/e/g/i$a;

    invoke-direct {v11, v5, v7, v8, v9}, Lcom/applovin/exoplayer2/e/g/i$a;-><init>(IJI)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_59
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return-void

    :cond_66
    const/4 p1, 0x3

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/i$a;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/e/g/i$a;->wE:J

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return-void
.end method

.method private static m(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/g/f/c;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/applovin/exoplayer2/e/g/i;->AK:Lcom/applovin/exoplayer2/common/base/Splitter;

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    sget-object v2, Lcom/applovin/exoplayer2/e/g/i;->AJ:Lcom/applovin/exoplayer2/common/base/Splitter;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_60

    :try_start_2b
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v3

    shl-int v11, v3, v2

    new-instance v2, Lcom/applovin/exoplayer2/g/f/c$a;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/applovin/exoplayer2/g/f/c$a;-><init>(JJI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_57} :catch_5a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_5a
    move-exception p0

    invoke-static {v5, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_60
    invoke-static {v5, v5}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_65
    new-instance p0, Lcom/applovin/exoplayer2/g/f/c;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/g/f/c;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public Y()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/i;->AL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/e/i;",
            "Lcom/applovin/exoplayer2/e/u;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/g/a$a;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v3, :cond_1f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x3

    if-ne v0, v4, :cond_15

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/e/g/i;->a(Lcom/applovin/exoplayer2/e/i;Ljava/util/List;)V

    iput-wide v1, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    goto :goto_3a

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/i;->h(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)V

    goto :goto_3a

    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/i;->g(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)V

    goto :goto_3a

    :cond_23
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_36

    const-wide/16 v6, 0x8

    cmp-long p1, v4, v6

    if-gez p1, :cond_34

    goto :goto_36

    :cond_34
    sub-long v1, v4, v6

    :cond_36
    :goto_36
    iput-wide v1, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    iput v3, p0, Lcom/applovin/exoplayer2/e/g/i;->AM:I

    :goto_3a
    return v3
.end method

###### Class com.applovin.exoplayer2.e.g.i.a (com.applovin.exoplayer2.e.g.i$a)
.class final Lcom/applovin/exoplayer2/e/g/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final gn:I

.field public final oW:I

.field public final wE:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/i$a;->gn:I

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/g/i$a;->wE:J

    iput p4, p0, Lcom/applovin/exoplayer2/e/g/i$a;->oW:I

    return-void
.end method
