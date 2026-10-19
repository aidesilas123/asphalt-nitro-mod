package com.gameloft.glads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
class WebViewFileChooser {
    private static String a = "image/*";
    private static ValueCallback<Uri[]> b;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                WebViewFileChooser.TakePicture();
            } else {
                if (i != 1) {
                    return;
                }
                WebViewFileChooser.FilePicker();
            }
        }
    }

    class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            WebViewFileChooser.Close(null);
        }
    }

    WebViewFileChooser() {
    }

    private static boolean CanTakePhotoFromBuffer() {
        String lowerCase = Build.MODEL.toLowerCase();
        return lowerCase.contains("nexus") || lowerCase.contains("asus") || lowerCase.contains("sm-g928f");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Close(Uri[] uriArr) {
        ValueCallback<Uri[]> valueCallback = b;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(uriArr);
        }
        b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void FilePicker() {
        try {
            Intent intent = new Intent();
            intent.setType(a);
            intent.setAction("android.intent.action.GET_CONTENT");
            Utils.GetActivity().startActivityForResult(Intent.createChooser(intent, "Select File"), 143592);
        } catch (Exception unused) {
            Close(null);
        }
    }

    private static void HandleFilePickerResponse(int i, int i2, Intent intent) {
        Uri[] uriArr = null;
        if (i2 != -1) {
            Close(null);
        } else {
            try {
                uriArr = new Uri[]{Uri.parse(intent.getDataString())};
            } catch (Exception unused) {
            }
            Close(uriArr);
        }
    }

    private static void HandleTakePictureResponse(int i, int i2, Intent intent) {
        Uri[] uriArr;
        Uri[] uriArr2 = null;
        if (i2 != -1) {
            Close(null);
            return;
        }
        if (!CanTakePhotoFromBuffer()) {
            Cursor cursorManagedQuery = Utils.GetActivity().managedQuery(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data"}, null, null, "_id DESC");
            cursorManagedQuery.moveToFirst();
            do {
                String string = cursorManagedQuery.getString(cursorManagedQuery.getColumnIndex("_data"));
                if (string != null) {
                    uriArr = new Uri[]{Uri.fromFile(new File(string))};
                }
            } while (cursorManagedQuery.moveToNext());
            Close(uriArr2);
        }
        Bitmap bitmap = (Bitmap) intent.getExtras().get("data");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        String str = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "GL" + System.currentTimeMillis() + ".png";
        File file = new File(str);
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(byteArray);
        fileOutputStream.flush();
        uriArr = new Uri[]{Uri.fromFile(new File(str))};
        uriArr2 = uriArr;
        Close(uriArr2);
    }

    static boolean ShowFileChooser(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        ValueCallback<Uri[]> valueCallback2 = b;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
        }
        b = valueCallback;
        ShowSelectionMenu();
        return true;
    }

    private static void ShowSelectionMenu() {
        AlertDialog.Builder builder = new AlertDialog.Builder(Utils.GetActivity());
        builder.setTitle("Add Photo!");
        builder.setItems(new CharSequence[]{"Take Photo", "Choose from Library"}, new a());
        builder.setOnCancelListener(new b());
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void TakePicture() {
        try {
            Activity activityGetActivity = Utils.GetActivity();
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            if (intent.resolveActivity(activityGetActivity.getPackageManager()) != null) {
                activityGetActivity.startActivityForResult(intent, 143591);
            } else {
                Close(null);
            }
        } catch (Exception unused) {
            Close(null);
        }
    }

    static boolean onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 143591:
                HandleTakePictureResponse(i, i2, intent);
                break;
            case 143592:
                HandleFilePickerResponse(i, i2, intent);
                break;
        }
        return true;
    }
}
