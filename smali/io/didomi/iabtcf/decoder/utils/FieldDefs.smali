###### Class io.didomi.iabtcf.decoder.utils.FieldDefs (io.didomi.iabtcf.decoder.utils.FieldDefs)
.class public final enum Lio/didomi/iabtcf/decoder/utils/FieldDefs;
.super Ljava/lang/Enum;
.source "FieldDefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;,
        Lio/didomi/iabtcf/decoder/utils/FieldDefs$PublisherRestrictionUtils;,
        Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;,
        Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;,
        Lio/didomi/iabtcf/decoder/utils/FieldDefs$MemoizingFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum AV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum AV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum AV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CHAR:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_IS_SERVICE_SPECIFIC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_PUB_RESTRICTION_ENTRY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_PURPOSE_ONE_TREATMENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_USE_NON_STANDARD_STOCKS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_LI_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_LI_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_LI_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum DV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum DV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum DV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum END_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum IS_A_RANGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum OOB_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_CUSTOM_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_CUSTOM_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PPTC_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum RESTRICTION_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum START_OR_ONLY_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum TIMESTAMP:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_PPC_CUSTOM_PURPOSES_BITFIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_PPC_NUMBER_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_PPC_PUBLISHER_PURPOSES_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_PPC_STANDARD_PURPOSES_ALLOWED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_PURPOSES_ALLOW:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_DEFAULT_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VENDOR_NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

.field public static final enum V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;


# instance fields
.field private volatile isDynamic:Z

.field private volatile isDynamicInit:Z

.field private length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

.field private offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "CORE_VERSION"

    invoke-direct {v0, v3, v1, v2, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x24

    const/4 v2, 0x1

    const-string v3, "CORE_CREATED"

    invoke-direct {v0, v3, v2, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x2

    const/16 v2, 0x24

    const-string v3, "CORE_LAST_UPDATED"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x3

    const/16 v2, 0xc

    const-string v3, "CORE_CMP_ID"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x4

    const-string v3, "CORE_CMP_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const-string v3, "CORE_CONSENT_SCREEN"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x6

    const/16 v2, 0xc

    const-string v3, "CORE_CONSENT_LANGUAGE"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x7

    const-string v3, "CORE_VENDOR_LIST_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x8

    const/4 v2, 0x6

    const-string v3, "CORE_TCF_POLICY_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const-string v3, "CORE_IS_SERVICE_SPECIFIC"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_IS_SERVICE_SPECIFIC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0xa

    const-string v3, "CORE_USE_NON_STANDARD_STOCKS"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_USE_NON_STANDARD_STOCKS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0xb

    const/16 v2, 0xc

    const-string v3, "CORE_SPECIAL_FEATURE_OPT_INS"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x18

    const-string v3, "CORE_PURPOSES_CONSENT"

    invoke-direct {v0, v3, v2, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0xd

    const/16 v2, 0x18

    const-string v3, "CORE_PURPOSES_LI_TRANSPARENCY"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0xe

    const/4 v2, 0x1

    const-string v3, "CORE_PURPOSE_ONE_TREATMENT"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSE_ONE_TREATMENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0xf

    const/16 v2, 0xc

    const-string v3, "CORE_PUBLISHER_CC"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x10

    const-string v2, "CORE_VENDOR_MAX_VENDOR_ID"

    invoke-direct {v0, v2, v1, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x11

    const/4 v3, 0x1

    const-string v4, "CORE_VENDOR_IS_RANGE_ENCODING"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v1, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v0

    const/16 v1, 0x12

    const-string v3, "CORE_VENDOR_BITRANGE_FIELD"

    invoke-direct {v2, v3, v1, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x13

    const/16 v2, 0x10

    const-string v3, "CORE_VENDOR_LI_MAX_VENDOR_ID"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x14

    const/4 v3, 0x1

    const-string v4, "CORE_VENDOR_LI_IS_RANGE_ENCODING"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v3, 0x15

    invoke-static {v1, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v0

    const-string v1, "CORE_VENDOR_LI_BITRANGE_FIELD"

    invoke-direct {v2, v1, v3, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x16

    const/16 v2, 0xc

    const-string v3, "CORE_NUM_PUB_RESTRICTION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x17

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$PublisherRestrictionUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v0

    const-string v3, "CORE_PUB_RESTRICTION_ENTRY"

    invoke-direct {v1, v3, v2, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUB_RESTRICTION_ENTRY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x18

    const-string v4, "OOB_SEGMENT_TYPE"

    invoke-direct {v0, v4, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->OOB_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x19

    const/16 v3, 0x10

    const-string v4, "DV_MAX_VENDOR_ID"

    invoke-direct {v1, v4, v2, v3, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const-string v5, "DV_IS_RANGE_ENCODING"

    invoke-direct {v2, v5, v3, v4}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v4, 0x1b

    invoke-static {v2, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v1

    const-string v2, "DV_VENDOR_BITRANGE_FIELD"

    invoke-direct {v3, v2, v4, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x1c

    const/16 v3, 0x10

    const-string v4, "AV_MAX_VENDOR_ID"

    invoke-direct {v1, v4, v2, v3, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    const-string v4, "AV_IS_RANGE_ENCODING"

    invoke-direct {v0, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v3, 0x1e

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplier(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v0

    const-string v1, "AV_VENDOR_BITRANGE_FIELD"

    invoke-direct {v2, v1, v3, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x1f

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "PPTC_SEGMENT_TYPE"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x20

    const/16 v2, 0x18

    const-string v3, "PPTC_PUB_PURPOSES_CONSENT"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x21

    const-string v3, "PPTC_PUB_PURPOSES_LI_TRANSPARENCY"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x22

    const/4 v2, 0x6

    const-string v3, "PPTC_NUM_CUSTOM_PURPOSES"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x23

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;

    invoke-direct {v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$1;-><init>()V

    const-string v3, "PPTC_CUSTOM_PURPOSES_CONSENT"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs$2;

    invoke-direct {v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$2;-><init>()V

    const/16 v2, 0x24

    const-string v3, "PPTC_CUSTOM_PURPOSES_LI_TRANSPARENCY"

    invoke-direct {v0, v3, v2, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x25

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;->NOT_SUPPORTED:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    const/16 v3, 0xc

    const-string v4, "NUM_ENTRIES"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x26

    const/4 v3, 0x1

    const-string v4, "IS_A_RANGE"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->IS_A_RANGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x27

    const/16 v3, 0x10

    const-string v4, "START_OR_ONLY_VENDOR_ID"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->START_OR_ONLY_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x28

    const-string v4, "END_VENDOR_ID"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->END_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x29

    const/16 v3, 0x24

    const-string v4, "TIMESTAMP"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->TIMESTAMP:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2a

    const/4 v3, 0x6

    const-string v4, "PURPOSE_ID"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2b

    const/4 v3, 0x2

    const-string v4, "RESTRICTION_TYPE"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->RESTRICTION_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2c

    const/4 v3, 0x6

    const-string v4, "CHAR"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CHAR:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const-string v4, "V1_VERSION"

    invoke-direct {v0, v4, v1, v3, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const-string v3, "V1_CREATED"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x2f

    const-string v3, "V1_LAST_UPDATED"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x30

    const/16 v2, 0xc

    const-string v3, "V1_CMP_ID"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x31

    const-string v3, "V1_CMP_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x32

    const/4 v2, 0x6

    const-string v3, "V1_CONSENT_SCREEN"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x33

    const/16 v2, 0xc

    const-string v3, "V1_CONSENT_LANGUAGE"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x34

    const-string v3, "V1_VENDOR_LIST_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x35

    const/16 v3, 0x18

    const-string v4, "V1_PURPOSES_ALLOW"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PURPOSES_ALLOW:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x36

    const/16 v3, 0x10

    const-string v4, "V1_VENDOR_MAX_VENDOR_ID"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x37

    const/4 v3, 0x1

    const-string v4, "V1_VENDOR_IS_RANGE_ENCODING"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v3, 0x38

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$BitRangeFieldUtils;->lengthSupplierV1()Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object v4

    const-string v5, "V1_VENDOR_BITRANGE_FIELD"

    invoke-direct {v2, v5, v3, v4}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v3, 0x39

    const/4 v4, 0x1

    const-string v5, "V1_VENDOR_DEFAULT_CONSENT"

    invoke-direct {v2, v5, v3, v4, v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    sput-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_DEFAULT_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x3a

    const/16 v3, 0xc

    const-string v4, "V1_VENDOR_NUM_ENTRIES"

    invoke-direct {v1, v4, v2, v3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x3b

    const-string v4, "V1_PPC_PUBLISHER_PURPOSES_VERSION"

    invoke-direct {v1, v4, v2, v3, v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    sput-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_PUBLISHER_PURPOSES_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x3c

    const/16 v2, 0x18

    const-string v3, "V1_PPC_STANDARD_PURPOSES_ALLOWED"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_STANDARD_PURPOSES_ALLOWED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x3d

    const/4 v2, 0x6

    const-string v3, "V1_PPC_NUMBER_CUSTOM_PURPOSES"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_NUMBER_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v1, 0x3e

    new-instance v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs$3;

    invoke-direct {v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$3;-><init>()V

    const-string v3, "V1_PPC_CUSTOM_PURPOSES_BITFIELD"

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;-><init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_CUSTOM_PURPOSES_BITFIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v0, 0x3f

    new-array v0, v0, [Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_IS_SERVICE_SPECIFIC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_USE_NON_STANDARD_STOCKS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSE_ONE_TREATMENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUB_RESTRICTION_ENTRY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->OOB_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v1, 0x19

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/16 v1, 0x25

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->IS_A_RANGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->START_OR_ONLY_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->END_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->TIMESTAMP:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->RESTRICTION_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CHAR:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PURPOSES_ALLOW:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_DEFAULT_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_PUBLISHER_PURPOSES_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_STANDARD_PURPOSES_ALLOWED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_NUMBER_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_CUSTOM_PURPOSES_BITFIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    aput-object v2, v0, v1

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->$VALUES:[Lio/didomi/iabtcf/decoder/utils/FieldDefs;

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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->lengthSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-static {p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offsetSupplierFromPrevious(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->lengthSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-static {p4}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offsetSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->lengthSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    iput-object p4, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->lengthSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-static {p4}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offsetSupplierFrom(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    iput-object p3, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-static {p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offsetSupplierFromPrevious(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    return-void
.end method

.method static lengthSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$7;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$7;-><init>(I)V

    return-object v0
.end method

.method static offsetSupplierConstant(I)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$4;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$4;-><init>(I)V

    return-object v0
.end method

.method static offsetSupplierFrom(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$5;-><init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-object v0
.end method

.method static offsetSupplierFromPrevious(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs$6;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$6;-><init>(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/iabtcf/decoder/utils/FieldDefs;
    .registers 2

    const-class v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    return-object p0
.end method

.method public static values()[Lio/didomi/iabtcf/decoder/utils/FieldDefs;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->$VALUES:[Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0}, [Lio/didomi/iabtcf/decoder/utils/FieldDefs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    return-object v0
.end method


# virtual methods
.method public getEnd(Lio/didomi/iabtcf/decoder/utils/BitReader;)I
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v0

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getLength()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/didomi/iabtcf/decoder/utils/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I
    .registers 3

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/BitReader;->cache:Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-virtual {p1, p0, v0}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->getLength(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I
    .registers 3

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/BitReader;->cache:Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    invoke-virtual {p1, p0, v0}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;->getOffset(Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/function/Function;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected isDynamic()Z
    .registers 3

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->offset:Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;

    invoke-interface {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$OffsetSupplier;->isDynamic()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->length:Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;

    invoke-interface {v0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs$LengthSupplier;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    iput-boolean v1, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamicInit:Z

    :cond_1d
    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->isDynamic:Z

    return v0
.end method
