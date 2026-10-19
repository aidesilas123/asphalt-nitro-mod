###### Class io.didomi.drawable.Regulation (io.didomi.sdk.Regulation)
.class public final enum Lio/didomi/sdk/Regulation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/Regulation$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/Regulation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008 \u0008\u0087\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B)\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\n\u001a\u0004\u0008\u0010\u0010\u000cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\n\u001a\u0004\u0008\u0011\u0010\u000cj\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#\u00a8\u0006$"
    }
    d2 = {
        "Lio/didomi/sdk/Regulation;",
        "",
        "",
        "value",
        "",
        "mixed",
        "tokenKey",
        "dcsKey",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Z",
        "getMixed",
        "()Z",
        "getTokenKey",
        "getDcsKey",
        "Companion",
        "a",
        "GDPR",
        "CCPA",
        "CPA",
        "CPRA",
        "CTDPA",
        "DPDPA",
        "FDBR",
        "IDPL",
        "MCDPA",
        "NHPA",
        "NJDPA",
        "OCPA",
        "TDPSA",
        "UCPA",
        "VCDPA",
        "NONE",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/didomi/sdk/Regulation;

.field public static final enum CCPA:Lio/didomi/sdk/Regulation;

.field public static final enum CPA:Lio/didomi/sdk/Regulation;

.field public static final enum CPRA:Lio/didomi/sdk/Regulation;

.field public static final enum CTDPA:Lio/didomi/sdk/Regulation;

.field public static final Companion:Lio/didomi/sdk/Regulation$a;

.field public static final enum DPDPA:Lio/didomi/sdk/Regulation;

.field public static final enum FDBR:Lio/didomi/sdk/Regulation;

.field public static final enum GDPR:Lio/didomi/sdk/Regulation;

.field public static final enum IDPL:Lio/didomi/sdk/Regulation;

.field public static final enum MCDPA:Lio/didomi/sdk/Regulation;

.field public static final enum NHPA:Lio/didomi/sdk/Regulation;

.field public static final enum NJDPA:Lio/didomi/sdk/Regulation;

.field public static final enum NONE:Lio/didomi/sdk/Regulation;

.field public static final enum OCPA:Lio/didomi/sdk/Regulation;

.field public static final enum TDPSA:Lio/didomi/sdk/Regulation;

.field public static final enum UCPA:Lio/didomi/sdk/Regulation;

.field public static final enum VCDPA:Lio/didomi/sdk/Regulation;


# instance fields
.field private final dcsKey:Ljava/lang/String;

.field private final mixed:Z

.field private final tokenKey:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/didomi/sdk/Regulation;
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Lio/didomi/sdk/Regulation;

    sget-object v1, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->CCPA:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->CPA:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->CPRA:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->CTDPA:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->DPDPA:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->FDBR:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->IDPL:Lio/didomi/sdk/Regulation;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->MCDPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->NHPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->NJDPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->OCPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->TDPSA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->UCPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->VCDPA:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    new-instance v7, Lio/didomi/sdk/Regulation;

    const-string v1, "GDPR"

    const/4 v2, 0x0

    const-string v3, "gdpr"

    const/4 v4, 0x0

    const-string v5, "Didomi_Token"

    const-string v6, "Didomi_DCS_GDPR"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "CCPA"

    const/4 v10, 0x1

    const-string v11, "ccpa"

    const/4 v12, 0x0

    const-string v13, "Didomi_Token_CCPA"

    const-string v14, "Didomi_DCS_CCPA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->CCPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "CPA"

    const/4 v3, 0x2

    const-string v4, "cpa"

    const/4 v5, 0x1

    const-string v6, "Didomi_Token_CPA"

    const-string v7, "Didomi_DCS_CPA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->CPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "CPRA"

    const/4 v10, 0x3

    const-string v11, "cpra"

    const/4 v12, 0x1

    const-string v13, "Didomi_Token_CPRA"

    const-string v14, "Didomi_DCS_CPRA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->CPRA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "CTDPA"

    const/4 v3, 0x4

    const-string v4, "ctdpa"

    const-string v6, "Didomi_Token_CTDPA"

    const-string v7, "Didomi_DCS_CTDPA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->CTDPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "DPDPA"

    const/4 v10, 0x5

    const-string v11, "dpdpa"

    const-string v13, "Didomi_Token_DPDPA"

    const-string v14, "Didomi_DCS_DPDPA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->DPDPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "FDBR"

    const/4 v3, 0x6

    const-string v4, "fdbr"

    const-string v6, "Didomi_Token_FDBR"

    const-string v7, "Didomi_DCS_FDBR"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->FDBR:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "IDPL"

    const/4 v10, 0x7

    const-string v11, "idpl"

    const-string v13, "Didomi_Token_IDPL"

    const-string v14, "Didomi_DCS_IDPL"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->IDPL:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "MCDPA"

    const/16 v3, 0x8

    const-string v4, "mcdpa"

    const-string v6, "Didomi_Token_MCDPA"

    const-string v7, "Didomi_DCS_MCDPA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->MCDPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "NHPA"

    const/16 v10, 0x9

    const-string v11, "nhpa"

    const-string v13, "Didomi_Token_NHPA"

    const-string v14, "Didomi_DCS_NHPA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->NHPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "NJDPA"

    const/16 v3, 0xa

    const-string v4, "njdpa"

    const-string v6, "Didomi_Token_NJDPA"

    const-string v7, "Didomi_DCS_NJDPA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->NJDPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "OCPA"

    const/16 v10, 0xb

    const-string v11, "ocpa"

    const-string v13, "Didomi_Token_OCPA"

    const-string v14, "Didomi_DCS_OCPA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->OCPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "TDPSA"

    const/16 v3, 0xc

    const-string v4, "tdpsa"

    const-string v6, "Didomi_Token_TDPSA"

    const-string v7, "Didomi_DCS_TDPSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->TDPSA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "UCPA"

    const/16 v10, 0xd

    const-string v11, "ucpa"

    const-string v13, "Didomi_Token_UCPA"

    const-string v14, "Didomi_DCS_UCPA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->UCPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v2, "VCDPA"

    const/16 v3, 0xe

    const-string v4, "vcdpa"

    const-string v6, "Didomi_Token_VCDPA"

    const-string v7, "Didomi_DCS_VCDPA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->VCDPA:Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation;

    const-string v9, "NONE"

    const/16 v10, 0xf

    const-string v11, "none"

    const/4 v12, 0x0

    const-string v13, "Didomi_Token_NONE"

    const-string v14, "Didomi_DCS_NONE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/didomi/sdk/Regulation;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    invoke-static {}, Lio/didomi/sdk/Regulation;->$values()[Lio/didomi/sdk/Regulation;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/Regulation;->$VALUES:[Lio/didomi/sdk/Regulation;

    new-instance v0, Lio/didomi/sdk/Regulation$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/Regulation$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/Regulation;->Companion:Lio/didomi/sdk/Regulation$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/didomi/sdk/Regulation;->value:Ljava/lang/String;

    iput-boolean p4, p0, Lio/didomi/sdk/Regulation;->mixed:Z

    iput-object p5, p0, Lio/didomi/sdk/Regulation;->tokenKey:Ljava/lang/String;

    iput-object p6, p0, Lio/didomi/sdk/Regulation;->dcsKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/Regulation;
    .registers 2

    const-class v0, Lio/didomi/sdk/Regulation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/Regulation;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/Regulation;
    .registers 1

    sget-object v0, Lio/didomi/sdk/Regulation;->$VALUES:[Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/Regulation;

    return-object v0
.end method


# virtual methods
.method public final getDcsKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Regulation;->dcsKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getMixed()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Regulation;->mixed:Z

    return v0
.end method

.method public final getTokenKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Regulation;->tokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Regulation;->value:Ljava/lang/String;

    return-object v0
.end method

###### Class io.didomi.drawable.Regulation.Companion (io.didomi.sdk.Regulation$a)
.class public final Lio/didomi/sdk/Regulation$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/Regulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/didomi/sdk/Regulation$a;",
        "",
        "<init>",
        "()V",
        "",
        "value",
        "Lio/didomi/sdk/Regulation;",
        "a",
        "(Ljava/lang/String;)Lio/didomi/sdk/Regulation;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Regulation$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/didomi/sdk/Regulation;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/Regulation;->CCPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_ee

    :cond_23
    sget-object v0, Lio/didomi/sdk/Regulation;->CPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto/16 :goto_ee

    :cond_31
    sget-object v0, Lio/didomi/sdk/Regulation;->CPRA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto/16 :goto_ee

    :cond_3f
    sget-object v0, Lio/didomi/sdk/Regulation;->CTDPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_ee

    :cond_4d
    sget-object v0, Lio/didomi/sdk/Regulation;->DPDPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto/16 :goto_ee

    :cond_5b
    sget-object v0, Lio/didomi/sdk/Regulation;->FDBR:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto/16 :goto_ee

    :cond_69
    sget-object v0, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    goto/16 :goto_ee

    :cond_77
    sget-object v0, Lio/didomi/sdk/Regulation;->IDPL:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    goto/16 :goto_ee

    :cond_85
    sget-object v0, Lio/didomi/sdk/Regulation;->MCDPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_ee

    :cond_92
    sget-object v0, Lio/didomi/sdk/Regulation;->NHPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    goto :goto_ee

    :cond_9f
    sget-object v0, Lio/didomi/sdk/Regulation;->NJDPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_ee

    :cond_ac
    sget-object v0, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_ee

    :cond_b9
    sget-object v0, Lio/didomi/sdk/Regulation;->OCPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_ee

    :cond_c6
    sget-object v0, Lio/didomi/sdk/Regulation;->TDPSA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    goto :goto_ee

    :cond_d3
    sget-object v0, Lio/didomi/sdk/Regulation;->UCPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    goto :goto_ee

    :cond_e0
    sget-object v0, Lio/didomi/sdk/Regulation;->VCDPA:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ed

    goto :goto_ee

    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    return-object v0
.end method
