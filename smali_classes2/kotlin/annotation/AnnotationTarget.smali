###### Class kotlin.annotation.AnnotationTarget (kotlin.annotation.AnnotationTarget)
.class public final enum Lkotlin/annotation/AnnotationTarget;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/annotation/AnnotationTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/annotation/AnnotationTarget;",
        "",
        "(Ljava/lang/String;I)V",
        "CLASS",
        "ANNOTATION_CLASS",
        "TYPE_PARAMETER",
        "PROPERTY",
        "FIELD",
        "LOCAL_VARIABLE",
        "VALUE_PARAMETER",
        "CONSTRUCTOR",
        "FUNCTION",
        "PROPERTY_GETTER",
        "PROPERTY_SETTER",
        "TYPE",
        "EXPRESSION",
        "FILE",
        "TYPEALIAS",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lkotlin/annotation/AnnotationTarget;

.field public static final enum b:Lkotlin/annotation/AnnotationTarget;

.field public static final enum c:Lkotlin/annotation/AnnotationTarget;

.field public static final enum d:Lkotlin/annotation/AnnotationTarget;

.field public static final enum e:Lkotlin/annotation/AnnotationTarget;

.field public static final enum f:Lkotlin/annotation/AnnotationTarget;

.field public static final enum g:Lkotlin/annotation/AnnotationTarget;

.field public static final enum h:Lkotlin/annotation/AnnotationTarget;

.field public static final enum i:Lkotlin/annotation/AnnotationTarget;

.field public static final enum j:Lkotlin/annotation/AnnotationTarget;

.field public static final enum k:Lkotlin/annotation/AnnotationTarget;

.field public static final enum l:Lkotlin/annotation/AnnotationTarget;

.field public static final enum m:Lkotlin/annotation/AnnotationTarget;

.field public static final enum n:Lkotlin/annotation/AnnotationTarget;

.field public static final enum o:Lkotlin/annotation/AnnotationTarget;

.field private static final synthetic p:[Lkotlin/annotation/AnnotationTarget;

.field private static final synthetic q:Lkotlin/enums/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->a:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "ANNOTATION_CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->b:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "TYPE_PARAMETER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->c:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "PROPERTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->d:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "FIELD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->e:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->f:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "VALUE_PARAMETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->g:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->h:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "FUNCTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->i:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "PROPERTY_GETTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->j:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "PROPERTY_SETTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->k:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "TYPE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->l:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "EXPRESSION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->m:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "FILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->n:Lkotlin/annotation/AnnotationTarget;

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "TYPEALIAS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->o:Lkotlin/annotation/AnnotationTarget;

    invoke-static {}, Lkotlin/annotation/AnnotationTarget;->e()[Lkotlin/annotation/AnnotationTarget;

    move-result-object v0

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->p:[Lkotlin/annotation/AnnotationTarget;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/a;

    move-result-object v0

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->q:Lkotlin/enums/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lkotlin/annotation/AnnotationTarget;
    .registers 3

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/annotation/AnnotationTarget;

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->a:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->b:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->c:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->d:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->e:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->f:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->g:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->h:Lkotlin/annotation/AnnotationTarget;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->i:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->j:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->k:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->l:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->m:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->n:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/annotation/AnnotationTarget;->o:Lkotlin/annotation/AnnotationTarget;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a<",
            "Lkotlin/annotation/AnnotationTarget;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/annotation/AnnotationTarget;->q:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/annotation/AnnotationTarget;
    .registers 2

    const-class v0, Lkotlin/annotation/AnnotationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/annotation/AnnotationTarget;

    return-object p0
.end method

.method public static values()[Lkotlin/annotation/AnnotationTarget;
    .registers 1

    sget-object v0, Lkotlin/annotation/AnnotationTarget;->p:[Lkotlin/annotation/AnnotationTarget;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/annotation/AnnotationTarget;

    return-object v0
.end method
