###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentType (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentType)
.class public final enum Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
.super Ljava/lang/Enum;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeveloperConsentType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field private static final i:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v3, "DEVELOPER_CONSENT_TYPE_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v5, "DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v7, "DEVELOPER_CONSENT_TYPE_PIPL_CONSENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v9, "DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v9, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v11, "DEVELOPER_CONSENT_TYPE_GDPR_CONSENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v11, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v13, "DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v13, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const/16 v12, 0x8

    new-array v12, v12, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->i:Lcom/google/protobuf/Internal$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->k:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_8
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_b
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_e
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_11
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_14
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_17
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->i:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    const-class v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-virtual {v0}, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->k:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
