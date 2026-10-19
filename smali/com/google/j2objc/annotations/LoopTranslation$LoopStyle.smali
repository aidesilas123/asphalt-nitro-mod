###### Class com.google.j2objc.annotations.LoopTranslation$LoopStyle (com.google.j2objc.annotations.LoopTranslation$LoopStyle)
.class public final enum Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
.super Ljava/lang/Enum;
.source "LoopTranslation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum b:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field private static final synthetic c:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v1, "JAVA_ITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->a:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    new-instance v1, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v3, "FAST_ENUMERATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->b:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->c:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .registers 2

    const-class v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object p0
.end method

.method public static values()[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .registers 1

    sget-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->c:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method
