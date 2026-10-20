###### Class com.json.adqualitysdk.sdk.i.ib (com.ironsource.adqualitysdk.sdk.i.ib)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ib;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x0

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1

.field public static ᕂ:Ljava/lang/String;

.field public static ᕃ:Ljava/lang/String;

.field public static ᕄ:Ljava/lang/String;

.field public static ᕆ:Ljava/lang/String;

.field public static ᖅ:Ljava/lang/String;

.field public static ᖩ:Ljava/lang/String;

.field public static ᖫ:Ljava/lang/String;

.field public static ᖭ:Ljava/lang/String;

.field public static ᖸ:Ljava/lang/String;

.field public static ᖺ:Ljava/lang/String;

.field public static ᗀ:Ljava/lang/String;

.field public static ᘥ:Ljava/lang/String;

.field public static ᵆ:Ljava/lang/String;

.field public static Ḟ:Ljava/lang/String;

.field public static Ḹ:Ljava/lang/String;

.field public static Ḽ:Ljava/lang/String;

.field public static Ṿ:Ljava/lang/String;

.field public static Ὑ:Ljava/lang/String;

.field public static Ῠ:Ljava/lang/String;

.field public static Ῡ:Ljava/lang/String;

.field public static Ὺ:Ljava/lang/String;

.field public static Ύ:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static Ⅽ:Ljava/lang/String;

.field public static Ↄ:Ljava/lang/String;

.field public static く:Ljava/lang/String;

.field public static っ:Ljava/lang/String;

.field public static へ:Ljava/lang/String;

.field public static ゥ:Ljava/lang/String;

.field public static ト:Ljava/lang/String;

.field public static リ:Ljava/lang/String;

.field public static ヮ:Ljava/lang/String;

.field public static ヶ:Ljava/lang/String;

.field public static 丫:Ljava/lang/String;

.field public static 乁:Ljava/lang/String;

.field public static 爫:Ljava/lang/String;

.field public static ﬤ:Ljava/lang/String;

.field public static טּ:Ljava/lang/String;

.field public static סּ:Ljava/lang/String;

.field public static ףּ:Ljava/lang/String;

.field public static ﭖ:Ljava/lang/String;

.field public static ﭴ:Ljava/lang/String;

.field public static ﭸ:Ljava/lang/String;

.field public static ﮉ:Ljava/lang/String;

.field public static ﮌ:Ljava/lang/String;

.field public static ﮐ:Ljava/lang/String;

.field public static ﱟ:Ljava/lang/String;

.field public static ﱡ:Ljava/lang/String;

.field public static ﺙ:Ljava/lang/String;

.field public static ﻏ:Ljava/lang/String;

.field public static ﻐ:Ljava/lang/String;

.field public static ﻛ:Ljava/lang/String;

.field public static ｋ:Ljava/lang/String;

.field public static ﾇ:Ljava/lang/String;

.field public static ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 61

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->c()V

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x88

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x5

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    const/4 v4, 0x1

    const-string v5, "\ufffb\ufff9\u0008\u0002\ufffd\u0002\u0003\ufffd\u0008\ufff5\u0006"

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x88

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v6, "\ufffd\u0002\u0008\ufffb"

    const-string v7, "\u2797\u6400\ua096\ued28"

    const-string v8, "\uffee\u0013\n\uffff\ufffb\ufffe"

    const-string v9, "\u0003\uffe7\u0000\u0012\u0007\u0000"

    const-string v10, "\u2793\u6d97"

    const-string v11, "\u2790\u32ce\u0d36\u678f\u72e9\u4d50"

    const-string v12, "\u2795\u0933\u7ae1\uab9d\u9d51\ucef7\u3fa2\u6144"

    const-string v13, "\ufffa\uffe9\ufffc\ufffc\u0010\u000c\u0006\ufffa\u000b"

    const-string v14, "\u278a\u1b73\u5e76\u9147\ud442\u1735\u4a24"

    const-string v15, "\u278a\ue4a7\ua1d9\u6ee0\u2b1c\ue83a"

    const-string v4, "\u2788\u6170\uaa5f\uf37f\u3c53\u4548\u8e5e\ud745\u105f\u5952"

    const-string v5, "\ufffc\ufff9\ufffc\u000e\u0001"

    move-object/from16 v18, v5

    const-string v5, "\ufff6\ufff9\u000b\ufffe\t"

    move-object/from16 v19, v5

    const-string v5, "\u2786\uaeba\u35e3\ubc25\u0370"

    move-object/from16 v20, v5

    const-string v5, "\u0003\ufffb\ufffc\n\u000b\uffec\t"

    move-object/from16 v21, v5

    const-string v5, "\u0005\u000b\uffee\u0005\ufffa\u0007\u0002\uffff"

    move-object/from16 v22, v5

    const-string v5, "\u2784\ue912\ubabc\u4c4f\u1de8\u2f4f\uf003\u81a4"

    move-object/from16 v23, v5

    const-string v5, "\u2784\ua1c6\u2b16\ub573\u3ea1\ub805"

    move-object/from16 v24, v5

    const-string v5, "\ufffa\u0005\u000e\uffe9\u000b\t\ufff8"

    move-object/from16 v25, v5

    const-string v5, "\u2782\u3e4b\u142d\u6af3\u40ab\ua689"

    move-object/from16 v26, v5

    const-string v5, "\u0008\u0001\u0007\uffea\u000b\t\ufff8"

    move-object/from16 v27, v5

    const-string v5, "\u2794\u4976\ufa42\u6b1b\u9c19\u0de4\ubec6"

    move-object/from16 v28, v5

    const-string v5, "\u2791\u57ed\uc745\u76bb\ue619\u1664\u85c6"

    move-object/from16 v29, v5

    const-string v5, "\u0008\u0005\uffff\u0006\ufffc\ufff6\u0002"

    move-object/from16 v30, v5

    const-string v5, "\u0005\ufffe\u0004\u0007\ufff9\uffff\ufffb"

    move-object/from16 v31, v5

    const-string v5, "\uffff\u0006\ufff8\ufff6\u0008\u0005"

    move-object/from16 v32, v5

    const-string v5, "\u278e\u2c48\u3012\u04f2\u08bd"

    move-object/from16 v33, v5

    const-string v5, "\ufffa\ufffb\u0000\u0005\u0007"

    move-object/from16 v34, v5

    const-string v5, "\u278e\u928c\u4d9e\u38b8\uf3ab"

    move-object/from16 v35, v5

    const-string v5, "\u0008\ufffa\uffff\u0007\ufffb"

    move-object/from16 v36, v5

    const-string v5, "\u0000\ufffd\u0000\u0005"

    move-object/from16 v37, v5

    const-string v5, "\ufffc\u0001\u000e\ufffc\ufff9"

    move-object/from16 v38, v5

    const-string v5, "\u278e\uf35e\u8e2e\u5900"

    move-object/from16 v39, v5

    const-string v5, "\u278e\u5950\uda22\u5bea\udcdd\u5d9c\udf66\u5052"

    move-object/from16 v40, v5

    const-string v5, "\u278e\uf790\u87a2\u57ae\u67c5\u37dc\uc7e6\u9712"

    move-object/from16 v41, v5

    const-string v5, "\u0006\u0002\uffde\u0001\ufff0\u000f\u0000\u0010\n"

    move-object/from16 v42, v5

    const-string v5, "\u27a2\u63b2\uafc4\uebe0\u371f\u731a\ubf50\ufb71\u069a\u42b5\u8ecf\uca03\u1627"

    move-object/from16 v43, v5

    const-string v5, "\u0013\u0015\u0001\ufff0\u0014\u0003\uffe1\uffe8\u0004\u0005"

    move-object/from16 v44, v5

    const-string v5, "\u27af\u0309\u6eda\u499e\ub509\u90e9\ufb8e\u275b\u02f2\u6da5\u4955"

    move-object/from16 v45, v5

    const-string v5, "\u27af\u14e1\u410a\ube46\ueab8\u27f6\u1428\u4177\ubdab\ueafd\u2745"

    move-object/from16 v46, v5

    const-string v5, "\u27af\u65a3\ua38e\ue19c\u2fa0\u6d8a\uab98\ue9b6\u37bb\u75af\ub3b1"

    move-object/from16 v47, v5

    const-string v5, "\u27af\uf06d\u8812\ua0f2\u7898\u1164\u294a\uc11a\u99cf\ub1a1\u4a6d"

    move-object/from16 v48, v5

    const-string v5, "\u27af\u154f\u4256\ubf28\uec07\ud90f\u16e2\u43cc\ub0dd\uedb9\uda84\u1781\u456f"

    move-object/from16 v49, v5

    const-string v5, "\u0004\uffe7\uffe0\u0002\u0013\ufff2\u0000\u0015\u0004\u0003\ufff2\u0013\u0000\u0013"

    move-object/from16 v50, v5

    const-string v5, "\u2792\ucc41\uf028\ue4ea\u88fa\ubca0\ua17f\u555b"

    move-object/from16 v51, v5

    const-string v5, "\u2788\u86ac\u65df\uc4f9\ua320\u025e\ue144\u4f8d\u2ec6\u8df2"

    move-object/from16 v52, v5

    const-string v5, "\u2795\u80bc"

    move-object/from16 v53, v5

    const-string v5, "\ufff9\u0006\u0003"

    move-object/from16 v54, v5

    const-string v5, "\u2786\u6ca8\ub1e6"

    move-object/from16 v55, v5

    const-string v5, "\uffff\u000f\t\u0000\u0011\uffe0\uffff\t\u0000\uffee\u000f\n\uffe9\n"

    move-object/from16 v56, v5

    const-string v5, "\u278a\u2c49\u3015\u04ef\u088f\u1d71\u6151\u750b"

    move-object/from16 v57, v5

    const-string v5, "\u2795\u7b25\u9edf"

    move-object/from16 v58, v5

    const-string v5, "\u2797\u6790\ua7b2"

    move-object/from16 v59, v5

    const-string v5, "\u278e\u6b65\ube51\uc129"

    const-wide/16 v16, 0x0

    cmp-long v60, v2, v16

    rsub-int/lit8 v2, v60, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾇ:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x438b

    invoke-static {v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ｋ:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/lit16 v1, v1, 0x82

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    rsub-int/lit8 v2, v2, 0x5

    invoke-static {v3, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    add-int/lit8 v3, v3, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻐ:Ljava/lang/String;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    add-int/lit8 v1, v1, 0x7e

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x6

    invoke-static {v1, v5, v2, v3, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾒ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x4a03

    invoke-static {v10, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    rsub-int v1, v1, 0x155f

    invoke-static {v11, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮐ:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int v1, v1, 0x2eb0

    invoke-static {v12, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱡ:Ljava/lang/String;

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x83

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    const/4 v5, 0x1

    invoke-static {v1, v5, v2, v3, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﺙ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x3cf1

    invoke-static {v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻏ:Ljava/lang/String;

    const v1, 0xc325    # 7.0005E-41f

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v15, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮌ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    rsub-int v1, v1, 0x46fa

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭖ:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    rsub-int v1, v5, 0x85

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v5, v18

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭸ:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    add-int/lit16 v1, v1, 0x87

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, 0x5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    rsub-int/lit8 v3, v3, 0x5

    move-object/from16 v5, v19

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮉ:Ljava/lang/String;

    const v1, 0x8939

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭴ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x85

    const v2, 0x1000001

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    add-int/lit8 v2, v2, 0x6

    const/4 v4, 0x0

    move-object/from16 v5, v21

    invoke-static {v1, v4, v3, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ףּ:Ljava/lang/String;

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x83

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    rsub-int/lit8 v2, v6, 0x9

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    rsub-int/lit8 v3, v3, 0x38

    const/4 v4, 0x1

    move-object/from16 v5, v22

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    const v1, 0xce99

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    add-int/2addr v2, v1

    move-object/from16 v1, v23

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﬤ:Ljava/lang/String;

    const v1, 0x864d

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, v24

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->טּ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x88

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    move-object/from16 v5, v25

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->爫:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    add-int/lit16 v5, v5, 0x19d0

    move-object/from16 v1, v26

    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->丫:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x87

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    rsub-int/lit8 v2, v2, 0x7

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    add-int/lit8 v3, v3, -0x29

    const/4 v4, 0x1

    move-object/from16 v5, v27

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ヶ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x6ee3

    move-object/from16 v2, v28

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ヮ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit16 v1, v1, 0x7063

    move-object/from16 v2, v29

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->乁:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    rsub-int v1, v1, 0x89

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    rsub-int/lit8 v3, v7, 0x6

    const/4 v4, 0x0

    move-object/from16 v5, v30

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->リ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    rsub-int v1, v1, 0x8a

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    move-object/from16 v5, v31

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->っ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    add-int/lit16 v1, v1, 0x89

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    rsub-int/lit8 v2, v2, 0x2

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v5, v32

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ト:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    add-int/lit16 v1, v1, 0xbcb

    move-object/from16 v2, v33

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ゥ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x85

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    move-object/from16 v5, v34

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->へ:Ljava/lang/String;

    const v1, 0xb50f

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, v35

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->く:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x85

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    rsub-int/lit8 v3, v3, 0x5

    move-object/from16 v5, v36

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ὺ:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v1, v1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    add-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v5, v37

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ύ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x84

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    move-object/from16 v5, v38

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ⅽ:Ljava/lang/String;

    const v1, 0xd4dd

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, v39

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->K:Ljava/lang/String;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    add-int/lit16 v1, v1, 0x7ed4

    move-object/from16 v2, v40

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ↄ:Ljava/lang/String;

    const v1, 0xd013

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    move-object/from16 v1, v41

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ὑ:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x8

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    move-object/from16 v5, v42

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῠ:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {v1}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v1

    rsub-int v1, v1, 0x4453

    move-object/from16 v2, v43

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ṿ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x7c

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    add-int/lit8 v6, v6, 0x7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v7, v2, v4

    rsub-int/lit8 v2, v7, 0xb

    const/4 v3, 0x1

    move-object/from16 v4, v44

    invoke-static {v1, v3, v6, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḽ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x24af

    move-object/from16 v2, v45

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῡ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int v1, v1, 0x3347

    move-object/from16 v2, v46

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᵆ:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x4205

    move-object/from16 v2, v47

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᗀ:Ljava/lang/String;

    const v1, 0xd7cb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    move-object/from16 v2, v48

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḹ:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit16 v1, v1, 0x32ea

    move-object/from16 v2, v49

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᘥ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x7d

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v5, v50

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḟ:Ljava/lang/String;

    const v1, 0xebd4

    const/16 v2, 0x30

    invoke-static {v0, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, v51

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖭ:Ljava/lang/String;

    const v1, 0xa12a

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/2addr v2, v1

    move-object/from16 v1, v52

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖸ:Ljava/lang/String;

    const v1, 0xa72d

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v2, v53

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x8c

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    move-object/from16 v5, v54

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖫ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    rsub-int v1, v1, 0x4b3b

    move-object/from16 v2, v55

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖩ:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int v1, v1, 0x80

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    const/4 v3, 0x1

    move-object/from16 v4, v56

    invoke-static {v1, v3, v2, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕂ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    add-int/lit16 v4, v4, 0xbca

    move-object/from16 v0, v57

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕆ:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    rsub-int v0, v0, 0x5ca7

    move-object/from16 v1, v58

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕃ:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    rsub-int v0, v0, 0x404b

    move-object/from16 v1, v59

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕄ:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    rsub-int v0, v0, 0x4ce1

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖅ:Ljava/lang/String;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->d:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_69e

    const/16 v0, 0x4c

    goto :goto_6a0

    :cond_69e
    const/16 v0, 0x61

    :goto_6a0
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6a5

    return-void

    :cond_6a5
    const/4 v0, 0x0

    :try_start_6a6
    throw v0
    :try_end_6a7
    .catchall {:try_start_6a6 .. :try_end_6a7} :catchall_6a7

    :catchall_6a7
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static c()V
    .registers 2

    const/16 v0, 0x1c

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->a:I

    const-wide v0, 0x6209b860c9b27e7L

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->b:J

    return-void
.end method
