###### Class gateway.v1.q (gateway.v1.q)
.class public final Lgateway/v1/q;
.super Ljava/lang/Object;
.source "DiagnosticTagKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/q$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 82\u00020\u0001:\u000289B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001f\u001a\u00020 H\u0001J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"J\u0006\u0010&\u001a\u00020\'J\u0006\u0010(\u001a\u00020\'J\u0006\u0010)\u001a\u00020\'J%\u0010*\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u0010\u0005\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008+J+\u0010,\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00170.H\u0007\u00a2\u0006\u0002\u0008/J\u001d\u00100\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0007\u00a2\u0006\u0002\u00081J&\u00102\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u0010\u0005\u001a\u00020\u0017H\u0087\n\u00a2\u0006\u0002\u00083J,\u00102\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00170.H\u0087\n\u00a2\u0006\u0002\u00084J.\u00105\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u00106\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0017H\u0087\u0002\u00a2\u0006\u0002\u00087R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006:"
    }
    d2 = {
        "Lgateway/v1/DiagnosticTagKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;)V",
        "value",
        "",
        "customTagType",
        "getCustomTagType",
        "()Ljava/lang/String;",
        "setCustomTagType",
        "(Ljava/lang/String;)V",
        "",
        "intValue",
        "getIntValue",
        "()I",
        "setIntValue",
        "(I)V",
        "stringValue",
        "getStringValue",
        "setStringValue",
        "tagType",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
        "Lgateway/v1/DiagnosticTagKt$Dsl$TagTypeProxy;",
        "getTagType",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "valueCase",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;",
        "getValueCase",
        "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;",
        "_build",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
        "clearCustomTagType",
        "",
        "clearIntValue",
        "clearStringValue",
        "clearValue",
        "hasCustomTagType",
        "",
        "hasIntValue",
        "hasStringValue",
        "add",
        "addTagType",
        "addAll",
        "values",
        "",
        "addAllTagType",
        "clear",
        "clearTagType",
        "plusAssign",
        "plusAssignTagType",
        "plusAssignAllTagType",
        "set",
        "index",
        "setTagType",
        "Companion",
        "TagTypeProxy",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/q$a;


# instance fields
.field private final b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/q$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/q;->a:Lgateway/v1/q$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/q;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/q;-><init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;
    .registers 3

    iget-object v0, p0, Lgateway/v1/q;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;

    return-object v0
.end method
