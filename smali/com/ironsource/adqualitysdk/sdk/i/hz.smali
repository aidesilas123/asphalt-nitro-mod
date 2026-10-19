###### Class com.json.adqualitysdk.sdk.i.hz (com.ironsource.adqualitysdk.sdk.i.hz)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hz$d;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static b:J = 0x0L

.field private static c:[I = null

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Ljavax/crypto/Cipher;

.field private g:Ljavax/crypto/Cipher;

.field private h:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a:[B

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_18
    .array-data 1
        0x10t
        0x4at
        0x47t
        -0x50t
        0x20t
        0x65t
        -0x2ft
        0x48t
        0x75t
        -0xet
        0x0t
        -0x1dt
        0x46t
        0x41t
        -0xct
        0x4at
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    const-string v3, "\ue1e0\ufd3e\u3753\u66ad\ue1b0\u46f3\u4008\u5457\u0f95\u54a1\u5241\u4617\u3dd0\u6578\u6484\u69c6\u2b10\u7b4f\u76b4\u9bfa\u5952\u8908\u0709\u8d71\u4689\u9fd6\u2934\ubf37\u74ca\uad8a\u3bf8\uaefa\u6207"

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    neg-int v4, v8

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v6, 0x400

    const/16 v7, 0x100

    invoke-direct {v4, v5, p1, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1
    :try_end_44
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_44} :catch_45

    goto :goto_b3

    :catch_45
    const/16 p1, 0xa

    new-array v3, p1, [I

    fill-array-data v3, :array_f0

    const-string v4, ""

    invoke-static {v4}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    const-string v6, "\u1dc3\ua7ea\u60f6\ua575\u1d93\u1c17\u1787\u97ba\uf39e\u0e43\u05c0\u85e5\uc19b\u3f8c\u330e\uaa70\ud71e\u21c7\u2147\u587b\ua55e\ud3e5\u5099\u4e9c\uba86\uc533\u7ed0\u7cc9\u888b\uf779\u6c15\u6d16\u9e0e\u98ba\u9a51\u130a\u6c03\u8ad1\u887a\u0181\u7db6\ubc2f\ub7ab\u379c\u53ff\uae64\ua5e6\u2416\u2132\u5fbb\ud321\uca5a\u3767\u4195\uc179\uf878\u04bf\u7303\uf0b3\ueead\u1ae8\u6555\u1ebe"

    invoke-static {v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ic;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6e
    new-array v3, v0, [I

    const v5, 0x343fb2f9

    aput v5, v3, v2

    const v5, 0x2046a7c

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {v4}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_a3
    array-length p3, p2

    if-ge v2, p3, :cond_af

    aget-char p3, p2, v2

    int-to-byte p3, p3

    invoke-virtual {v3, p3}, Ljava/security/MessageDigest;->update(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_af
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6e .. :try_end_b3} :catch_d3

    :goto_b3
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    new-array p3, v0, [I

    fill-array-data p3, :array_108

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p4

    cmpl-float p4, p4, v1

    rsub-int/lit8 p4, p4, 0x4

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->h:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    return-void

    :catch_d3
    move-exception p2

    new-instance p3, Ljava/lang/RuntimeException;

    new-array p1, p1, [I

    fill-array-data p1, :array_110

    invoke-static {v1, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result p4

    cmpl-float p4, p4, v1

    rsub-int/lit8 p4, p4, 0x13

    invoke-static {p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    nop

    :array_f0
    .array-data 4
        -0x6453f34a
        -0x4dfc4bc4
        0x625af0c1
        0x16d84f35
        0x7fbe8fe3
        -0x2253dd7e
        -0x2f73a14
        0x35cc92a7
        0x77032d82
        0xcb0f31a
    .end array-data

    :array_108
    .array-data 4
        0x78172648
        -0x39f0189c
    .end array-data

    :array_110
    .array-data 4
        0x591c3c3f
        -0x4c152dd9
        -0x605f374b
        0x675afc77
        0x9390daf
        -0x21f80fce
        -0xd03ff4e
        0x4051d73b
        -0x48f4c341
        -0x14c36dee
    .end array-data
.end method

.method private a()V
    .registers 24

    move-object/from16 v1, p0

    const/16 v0, 0xa

    const/4 v2, 0x1

    :try_start_5
    new-array v3, v0, [I

    const v4, -0x51b960e0

    const/4 v5, 0x0

    aput v4, v3, v5

    const v6, 0x37252263

    aput v6, v3, v2

    const v7, -0x32253c3a

    const/4 v8, 0x2

    aput v7, v3, v8

    const v9, -0x4cd07a49

    const/4 v10, 0x3

    aput v9, v3, v10

    const v11, 0x2cf526b5

    const/4 v12, 0x4

    aput v11, v3, v12

    const v13, -0x4cd3bfc3

    const/4 v14, 0x5

    aput v13, v3, v14

    const v15, 0x2275db19

    const/16 v16, 0x6

    aput v15, v3, v16

    const v17, -0x27b2c9ef

    const/16 v18, 0x7

    aput v17, v3, v18

    const v19, 0x24b7be70

    const/16 v20, 0x8

    aput v19, v3, v20

    const v21, 0x6db3bf5

    const/16 v22, 0x9

    aput v21, v3, v22

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v21

    shr-int/lit8 v21, v21, 0x10

    rsub-int/lit8 v15, v21, 0x14

    invoke-static {v3, v15}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->f:Ljavax/crypto/Cipher;

    iget-object v15, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->h:Ljavax/crypto/SecretKey;

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v14, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a:[B

    invoke-direct {v13, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v2, v15, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-array v0, v0, [I

    aput v4, v0, v5

    aput v6, v0, v2

    aput v7, v0, v8

    aput v9, v0, v10

    aput v11, v0, v12

    const v3, -0x4cd3bfc3

    const/4 v4, 0x5

    aput v3, v0, v4

    const v3, 0x2275db19

    aput v3, v0, v16

    aput v17, v0, v18

    aput v19, v0, v20

    const v3, 0x6db3bf5

    aput v3, v0, v22

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x14

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->g:Ljavax/crypto/Cipher;

    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->h:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v8, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_aa
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_aa} :catch_c6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_b8

    const/16 v0, 0x46

    goto :goto_ba

    :cond_b8
    const/16 v0, 0x1f

    :goto_ba
    const/16 v2, 0x46

    if-eq v0, v2, :cond_bf

    return-void

    :cond_bf
    const/16 v0, 0x4e

    :try_start_c1
    div-int/2addr v0, v5
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c3

    return-void

    :catchall_c3
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_c6
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v2

    const-string v2, "\ucee3\udbe0\ucd11\u0f87\uceaa\u6001\uba79\u3d4b\u20b3\u7242\ua82f\u2f4e\u12fe\u4389\u9ef1\u00cb\u0425\u5dcc\u8cad\uf28b\u7676\uaff1\ufd6b\ue43a\u69fd"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static b([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static d()V
    .registers 2

    const-wide v0, 0xc57364d6811bb8fL

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b:J

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x16ae8169
        0x5082161
        -0x1b2f3c81
        -0x661c9f4c
        -0x2895316b
        0x70a7e229
        -0x41da542b
        -0xbde42d4
        0x49d53577
        -0x34c7fc0d    # -1.2059635E7f
        -0x73ef5fac
        -0x7f59ee16
        0x66c06e70
        -0x70d0f8e9
        -0x116b2a70
        -0x1f51b8c7
        -0x3e8fc9d2
        0x5c80e00
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized ﻛ(Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/adqualitysdk/sdk/i/hz$d;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_5
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    const/4 v4, 0x0

    if-nez v0, :cond_23b

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_242

    const/16 v5, 0x60

    if-eqz v0, :cond_1d

    const/16 v0, 0x60

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x20

    :goto_1f
    if-eq v0, v5, :cond_229

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, 0xa

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/4 v13, 0x0

    :try_start_31
    new-instance v0, Ljava/lang/String;

    iget-object v14, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->g:Ljavax/crypto/Cipher;

    invoke-static/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->ﾒ(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v14, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    const-string v14, "\ufad0\ube46\u0f2b\ude9f\ufa85\u059d\u7873\uec1f\u14d4"

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v18

    shr-int/lit8 v18, v18, 0x10

    rsub-int/lit8 v15, v18, 0x1

    invoke-static {v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v4, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "\u57af\u07e1\ue806\udddf\u57cc\ubc01\u9f75\uef5c\ub9e0\uae45\u8d33\ufd5b\u8bbb\u9f87\ubbbe\ud298\u9d72\u81ce\ua9b8\u20d7\uef31\u73f9\ud826\u3637\uf0f7\u6533\uf620\u0428\uc286\u5753\ue4d3\u1585\ud469\u38b4\u12b1\u6bfd\u262c\u2aef\u008c\u793d\u37c1\u1c67\u3f0d\u4f6a"

    invoke-static {v13, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x1

    invoke-static {v4, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_86

    const-string v4, "\u57af\u07e1\ue806\udddf\u57cc\ubc01\u9f75\uef5c\ub9e0\uae45\u8d33\ufd5b\u8bbb\u9f87\ubbbe\ud298\u9d72\u81ce\ua9b8\u20d7\uef31\u73f9\ud826\u3637\uf0f7\u6533\uf620\u0428\uc286\u5753\ue4d3\u1585\ud469\u38b4\u12b1\u6bfd\u262c\u2aef\u008c\u793d\u37c1\u1c67\u3f0d\u4f6a"

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v4, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_84
    .catch Lcom/ironsource/adqualitysdk/sdk/i/hy; {:try_start_31 .. :try_end_84} :catch_1eb
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_31 .. :try_end_84} :catch_1b2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_31 .. :try_end_84} :catch_175
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_84} :catch_127
    .catchall {:try_start_31 .. :try_end_84} :catchall_242

    monitor-exit p0

    return-object v0

    :cond_86
    :try_start_86
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x14

    new-array v14, v14, [I

    const v15, 0x70eaf041

    aput v15, v14, v13

    const v15, 0x3c659ff5

    aput v15, v14, v16

    const v15, -0x3fae0305

    aput v15, v14, v3

    const v15, -0x7a6f29ca

    aput v15, v14, v11

    const v15, 0x40b4b4d1

    aput v15, v14, v10

    const v15, 0x54bc3841

    aput v15, v14, v9

    const v15, -0x7c7c01cf

    aput v15, v14, v8

    const v15, -0x32c7d794

    aput v15, v14, v7

    const v15, 0x100d4fbe

    aput v15, v14, v6

    const v15, -0x617e920b

    aput v15, v14, v5

    const v15, 0x1a2f972a

    aput v15, v14, v12

    const/16 v15, 0xb

    const v18, -0x4ec1dd67

    aput v18, v14, v15

    const/16 v15, 0xc

    const v18, -0x25be096c

    aput v18, v14, v15

    const/16 v15, 0xd

    const v18, -0x2f1a4c19

    aput v18, v14, v15

    const/16 v15, 0xe

    const v18, -0x4b6bf7f0

    aput v18, v14, v15

    const/16 v15, 0xf

    const v18, 0x6bcb376f

    aput v18, v14, v15

    const v15, -0x2b0c51ef

    const/16 v18, 0x10

    aput v15, v14, v18

    const/16 v15, 0x11

    const v18, 0xab2d663

    aput v18, v14, v15

    const/16 v15, 0x12

    const v18, 0x37227541

    aput v18, v14, v15

    const v15, -0x713178e9

    const/16 v17, 0x13

    aput v15, v14, v17

    invoke-static {v13}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v15, v19, v21

    add-int/lit8 v15, v15, 0x27

    invoke-static {v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_127
    .catch Lcom/ironsource/adqualitysdk/sdk/i/hy; {:try_start_86 .. :try_end_127} :catch_1eb
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_86 .. :try_end_127} :catch_1b2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_86 .. :try_end_127} :catch_175
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_127} :catch_127
    .catchall {:try_start_86 .. :try_end_127} :catchall_242

    :catch_127
    move-exception v0

    :try_start_128
    new-instance v2, Ljava/lang/RuntimeException;

    new-array v4, v12, [I

    const v12, 0x591c3c3f

    aput v12, v4, v13

    const v12, -0x4c152dd9

    aput v12, v4, v16

    const v12, -0x605f374b

    aput v12, v4, v3

    const v3, 0x675afc77

    aput v3, v4, v11

    const v3, 0x9390daf

    aput v3, v4, v10

    const v3, -0x21f80fce

    aput v3, v4, v9

    const v3, -0xd03ff4e

    aput v3, v4, v8

    const v3, 0x4051d73b

    aput v3, v4, v7

    const v3, -0x48f4c341

    aput v3, v4, v6

    const v3, -0x14c36dee

    aput v3, v4, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/16 v5, 0x10

    shr-int/2addr v3, v5

    const/16 v5, 0x13

    rsub-int/lit8 v3, v3, 0x13

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_175
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [I

    const v3, -0x12a6a33c

    aput v3, v0, v13

    const v3, 0x4df36803    # 5.1046E8f

    aput v3, v0, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    const/16 v6, 0x10

    shr-int/2addr v3, v6

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1b2
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [I

    const v3, -0x12a6a33c

    aput v3, v0, v13

    const v3, 0x4df36803    # 5.1046E8f

    aput v3, v0, v16

    invoke-static {v13}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1eb
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [I

    const v3, -0x12a6a33c

    aput v3, v0, v13

    const v3, 0x4df36803    # 5.1046E8f

    aput v3, v0, v16

    const-string v3, ""

    const-string v6, ""

    invoke-static {v3, v6, v13, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hz$d;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_229
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    rem-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    rem-int/2addr v2, v3
    :try_end_239
    .catchall {:try_start_128 .. :try_end_239} :catchall_242

    monitor-exit p0

    return-object v4

    :cond_23b
    :try_start_23b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_242

    :try_start_23e
    throw v4
    :try_end_23f
    .catchall {:try_start_23e .. :try_end_23f} :catchall_23f

    :catchall_23f
    move-exception v0

    move-object v2, v0

    :try_start_241
    throw v2
    :try_end_242
    .catchall {:try_start_241 .. :try_end_242} :catchall_242

    :catchall_242
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;)Ljava/lang/String;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_111

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const/4 v6, 0x2

    if-eq v2, v3, :cond_f6

    const/4 v10, 0x6

    const v11, -0x21f80fce

    const/4 v12, 0x5

    const v13, 0x9390daf

    const/4 v14, 0x4

    const v15, 0x675afc77

    const/16 v16, 0x3

    const v17, -0x605f374b

    const v18, -0x4c152dd9

    const v19, 0x591c3c3f

    const/16 v5, 0xa

    const/16 v20, 0x9

    :try_start_2e
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/hz;->f:Ljavax/crypto/Cipher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u57af\u07e1\ue806\udddf\u57cc\ubc01\u9f75\uef5c\ub9e0\uae45\u8d33\ufd5b\u8bbb\u9f87\ubbbe\ud298\u9d72\u81ce\ua9b8\u20d7\uef31\u73f9\ud826\u3637\uf0f7\u6533\uf620\u0428\uc286\u5753\ue4d3\u1585\ud469\u38b4\u12b1\u6bfd\u262c\u2aef\u008c\u793d\u37c1\u1c67\u3f0d\u4f6a"

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    rsub-int/lit8 v9, v21, 0x1

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\ufad0\ube46\u0f2b\ude9f\ufa85\u059d\u7873\uec1f\u14d4"

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->ｋ([B)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_6d} :catch_b5
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_6d} :catch_78
    .catchall {:try_start_2e .. :try_end_6d} :catchall_111

    :try_start_6d
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    rem-int/2addr v2, v6
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_111

    monitor-exit p0

    return-object v0

    :catch_78
    move-exception v0

    :try_start_79
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-array v5, v5, [I

    aput v19, v5, v4

    aput v18, v5, v3

    aput v17, v5, v6

    aput v15, v5, v16

    aput v13, v5, v14

    aput v11, v5, v12

    const v3, -0xd03ff4e

    aput v3, v5, v10

    const v3, 0x4051d73b

    const/4 v6, 0x7

    aput v3, v5, v6

    const v3, -0x48f4c341

    const/16 v6, 0x8

    aput v3, v5, v6

    const v3, -0x14c36dee

    aput v3, v5, v20

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_b5
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->a()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-array v5, v5, [I

    aput v19, v5, v4

    aput v18, v5, v3

    aput v17, v5, v6

    aput v15, v5, v16

    aput v13, v5, v14

    aput v11, v5, v12

    const v3, -0xd03ff4e

    aput v3, v5, v10

    const v3, 0x4051d73b

    const/4 v4, 0x7

    aput v3, v5, v4

    const v3, -0x48f4c341

    const/16 v4, 0x8

    aput v3, v5, v4

    const v3, -0x14c36dee

    aput v3, v5, v20

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const/16 v4, 0x13

    rsub-int/lit8 v3, v3, 0x13

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hz;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f6
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hz;->d:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hz;->e:I

    rem-int/2addr v2, v6
    :try_end_ff
    .catchall {:try_start_79 .. :try_end_ff} :catchall_111

    if-nez v2, :cond_103

    const/4 v2, 0x0

    goto :goto_104

    :cond_103
    const/4 v2, 0x1

    :goto_104
    if-eq v2, v3, :cond_10f

    const/16 v2, 0x13

    :try_start_108
    div-int/lit8 v5, v2, 0x0
    :try_end_10a
    .catchall {:try_start_108 .. :try_end_10a} :catchall_10c

    monitor-exit p0

    return-object v0

    :catchall_10c
    move-exception v0

    move-object v2, v0

    :try_start_10e
    throw v2
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_111

    :cond_10f
    monitor-exit p0

    return-object v0

    :catchall_111
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hz.d (com.ironsource.adqualitysdk.sdk.i.hz$d)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hz$d;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
