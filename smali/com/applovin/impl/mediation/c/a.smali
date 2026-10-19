###### Class com.applovin.impl.mediation.c.a (com.applovin.impl.mediation.c.a)
.class public Lcom/applovin/impl/mediation/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/a$a;
    }
.end annotation


# instance fields
.field private final advertiser:Ljava/lang/String;

.field private final avb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avc:I

.field private final avd:I

.field private final ave:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avf:Lorg/json/JSONArray;

.field private final avg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final body:Ljava/lang/String;

.field private final jsTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/json/JSONArray;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/a;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/mediation/c/a;->advertiser:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/mediation/c/a;->body:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/mediation/c/a;->avb:Ljava/lang/String;

    iput p6, p0, Lcom/applovin/impl/mediation/c/a;->avc:I

    iput p7, p0, Lcom/applovin/impl/mediation/c/a;->avd:I

    iput-object p8, p0, Lcom/applovin/impl/mediation/c/a;->ave:Ljava/lang/String;

    iput-object p9, p0, Lcom/applovin/impl/mediation/c/a;->avf:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/applovin/impl/mediation/c/a;->jsTrackers:Ljava/util/List;

    iput-object p11, p0, Lcom/applovin/impl/mediation/c/a;->avg:Ljava/util/List;

    return-void
.end method

.method private static yT()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method private static yU()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method private static yV()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method private static yW()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method private static yX()Lorg/json/JSONArray;
    .registers 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method private static yY()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static yZ()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static za()Lcom/applovin/impl/mediation/c/a$a;
    .registers 1

    new-instance v0, Lcom/applovin/impl/mediation/c/a$a;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/c/a$a;-><init>()V

    return-object v0
.end method

.method static synthetic zi()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zj()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zk()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zl()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zm()Lorg/json/JSONArray;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yX()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zn()Ljava/util/List;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yY()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zo()Ljava/util/List;
    .registers 1

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->yZ()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdvertiser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->advertiser:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->version:Ljava/lang/String;

    return-object v0
.end method

.method public zb()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->avb:Ljava/lang/String;

    return-object v0
.end method

.method public zc()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/c/a;->avc:I

    return v0
.end method

.method public zd()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/c/a;->avd:I

    return v0
.end method

.method public ze()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->ave:Ljava/lang/String;

    return-object v0
.end method

.method public zf()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->avf:Lorg/json/JSONArray;

    return-object v0
.end method

.method public zg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->jsTrackers:Ljava/util/List;

    return-object v0
.end method

.method public zh()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->avg:Ljava/util/List;

    return-object v0
.end method

###### Class com.applovin.impl.mediation.c.a.C0061a (com.applovin.impl.mediation.c.a$a)
.class public Lcom/applovin/impl/mediation/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private avb:Ljava/lang/String;

.field private avc:I

.field private avd:I

.field private ave:Ljava/lang/String;

.field private avh:Z

.field private avi:Ljava/lang/String;

.field private avj:Z

.field private avk:Ljava/lang/String;

.field private avl:Z

.field private avm:Ljava/lang/String;

.field private avn:Z

.field private avo:Ljava/lang/String;

.field private avp:Z

.field private avq:Lorg/json/JSONArray;

.field private avr:Z

.field private avs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private avt:Z

.field private avu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/mediation/c/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avs:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avr:Z

    return-object p0
.end method

.method public E(Ljava/util/List;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/mediation/c/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avu:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avt:Z

    return-object p0
.end method

.method public b(Lorg/json/JSONArray;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avq:Lorg/json/JSONArray;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avp:Z

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avi:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avh:Z

    return-object p0
.end method

.method public cc(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avk:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avj:Z

    return-object p0
.end method

.method public cd(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avm:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avl:Z

    return-object p0
.end method

.method public ce(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avo:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avn:Z

    return-object p0
.end method

.method public cf(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avb:Ljava/lang/String;

    return-object p0
.end method

.method public cg(Ljava/lang/String;)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a$a;->ave:Ljava/lang/String;

    return-object p0
.end method

.method public gs(I)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avc:I

    return-object p0
.end method

.method public gt(I)Lcom/applovin/impl/mediation/c/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/c/a$a;->avd:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenRtbAdConfiguration.Builder(version$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", advertiser$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickDestinationUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->ave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickTrackingUrls$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avq:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jsTrackers$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionUrls$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avu:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zp()Lcom/applovin/impl/mediation/c/a;
    .registers 14

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avi:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avh:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zi()Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v2, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avk:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avj:Z

    if-nez v1, :cond_15

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zj()Ljava/lang/String;

    move-result-object v0

    :cond_15
    move-object v3, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avm:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avl:Z

    if-nez v1, :cond_20

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zk()Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v4, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avo:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avn:Z

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zl()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    move-object v5, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avq:Lorg/json/JSONArray;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avp:Z

    if-nez v1, :cond_36

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zm()Lorg/json/JSONArray;

    move-result-object v0

    :cond_36
    move-object v10, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avs:Ljava/util/List;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avr:Z

    if-nez v1, :cond_41

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zn()Ljava/util/List;

    move-result-object v0

    :cond_41
    move-object v11, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a$a;->avu:Ljava/util/List;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/c/a$a;->avt:Z

    if-nez v1, :cond_4c

    invoke-static {}, Lcom/applovin/impl/mediation/c/a;->zo()Ljava/util/List;

    move-result-object v0

    :cond_4c
    move-object v12, v0

    new-instance v0, Lcom/applovin/impl/mediation/c/a;

    iget-object v6, p0, Lcom/applovin/impl/mediation/c/a$a;->avb:Ljava/lang/String;

    iget v7, p0, Lcom/applovin/impl/mediation/c/a$a;->avc:I

    iget v8, p0, Lcom/applovin/impl/mediation/c/a$a;->avd:I

    iget-object v9, p0, Lcom/applovin/impl/mediation/c/a$a;->ave:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/applovin/impl/mediation/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/json/JSONArray;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
