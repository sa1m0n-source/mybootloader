void jump_to_app(uint32_t addr)
{
    void (*app_entry)(void);
    app_entry = (void (*)(void)) (*(uint32_t *)(addr + 4));
    _set_MSP(*uint32_t *)addr);
    app_entry();
}

int main(void)
{
    uart_init();
    printf();

    if (verify_image)(APP_ADDR)
    {
        printf("Jumping to app...\n");
        jump_to_app(APP_ADDR);
    }

    while(1);
}