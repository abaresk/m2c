static ? $$25;                                      /* unable to generate initializer; const */
f32 D_410154[3] = { 3.0f, 4.0f, 5.0f };
f32 D_410160[3] = { 6.0f, 7.0f, 8.0f };
f32 D_410170[3];
f32 D_400120[3] = { 10.0f, 11.0f, 12.0f };          /* const */
f32 D_40012C[5] = { 14.0f, 15.0f, 16.0f, 17.0f, 18.0f }; /* const */

f32 test(s32 i) {
    f32 *temp_r4;
    f32 temp_f3;

    temp_r4 = &D_410170[i];
    *temp_r4 = D_410160[i] + D_400120[i];
    temp_f3 = *temp_r4;
    *NULL = *D_40012C * ((*D_40012C * temp_f3) + D_40012C[i]);
    return *D_40012C / temp_f3;
}
