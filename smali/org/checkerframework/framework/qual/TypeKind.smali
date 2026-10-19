###### Class org.checkerframework.framework.qual.TypeKind (org.checkerframework.framework.qual.TypeKind)
.class public final enum Lorg/checkerframework/framework/qual/TypeKind;
.super Ljava/lang/Enum;
.source "TypeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/qual/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum b:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum c:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum d:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum e:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum f:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum g:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum h:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum i:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum j:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum k:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum l:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum m:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum n:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum o:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum p:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum q:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum r:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum s:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum t:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum u:Lorg/checkerframework/framework/qual/TypeKind;

.field private static final synthetic v:[Lorg/checkerframework/framework/qual/TypeKind;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->a:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v1, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/qual/TypeKind;->b:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v3, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/framework/qual/TypeKind;->c:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v5, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v7, "INT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/framework/qual/TypeKind;->d:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v7, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v9, "LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/framework/qual/TypeKind;->e:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v9, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v11, "CHAR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/framework/qual/TypeKind;->f:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v11, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v13, "FLOAT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/framework/qual/TypeKind;->g:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v13, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v15, "DOUBLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/checkerframework/framework/qual/TypeKind;->h:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v15, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v14, "VOID"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/checkerframework/framework/qual/TypeKind;->i:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v14, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v12, "NONE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/checkerframework/framework/qual/TypeKind;->j:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v12, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v10, "NULL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/checkerframework/framework/qual/TypeKind;->k:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v10, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v8, "ARRAY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/checkerframework/framework/qual/TypeKind;->l:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v8, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v6, "DECLARED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/framework/qual/TypeKind;->m:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v6, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v4, "ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/qual/TypeKind;->n:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v4, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v2, "TYPEVAR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/qual/TypeKind;->o:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v2, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v6, "WILDCARD"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/qual/TypeKind;->p:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v6, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v4, "PACKAGE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/qual/TypeKind;->q:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v4, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v2, "EXECUTABLE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/qual/TypeKind;->r:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v2, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v6, "OTHER"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/qual/TypeKind;->s:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v6, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v4, "UNION"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/qual/TypeKind;->t:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v4, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v2, "INTERSECTION"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/qual/TypeKind;->u:Lorg/checkerframework/framework/qual/TypeKind;

    const/16 v2, 0x15

    new-array v2, v2, [Lorg/checkerframework/framework/qual/TypeKind;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lorg/checkerframework/framework/qual/TypeKind;->v:[Lorg/checkerframework/framework/qual/TypeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/qual/TypeKind;
    .registers 2

    const-class v0, Lorg/checkerframework/framework/qual/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/framework/qual/TypeKind;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/framework/qual/TypeKind;
    .registers 1

    sget-object v0, Lorg/checkerframework/framework/qual/TypeKind;->v:[Lorg/checkerframework/framework/qual/TypeKind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/qual/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/qual/TypeKind;

    return-object v0
.end method
